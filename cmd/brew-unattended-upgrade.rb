# frozen_string_literal: true

MAS = which("mas")
NOTIFER = which("terminal-notifier")
bundle_file = ENV["HOMEBREW_BUNDLE_FILE"] || "#{HOMEBREW_PREFIX}/etc/Brewfile"
bundle_file = nil if bundle_file && !File.exist?(bundle_file)

def notify(group:, message: nil, subtitle: nil, execute: nil, terminal: nil)
  return unless NOTIFER

  cmd = [
    NOTIFER,
    "-title", "Homebrew",
    "-appIcon", "https://brew.sh/assets/img/homebrew-256x256.png"
  ]

  execute = Shellwords.join([
    "osascript",
    '-e', 'on run argv',
    '-e', 'tell app "Terminal"',
    '-e', 'do script (item 1 of argv)',
    '-e', 'end tell',
    '-e', 'end run',
    Shellwords.join(terminal)
  ]) if terminal

  if message
    cmd.concat ["-group", "brew-unattended-upgrades #{group}"]
    cmd.concat ["-message", message]
  else
    cmd.concat ["-remove", "brew-unattended-upgrades #{group}"]
  end

  cmd.concat ["-subtitle", subtitle] if subtitle
  cmd.concat ["-execute", execute] if execute

  safe_system(*cmd)
end

at_exit do
  if $!.success?
    notify group: :exitstatus
  else
    notify group: :exitstatus, subtitle: "brew unattended-upgrade", message: "Failed"
  end
end

def run!(*args, label:)
  ohai(label)
  safe_system(*args)
end

NOTIFY_FAILURE = ->(r) { !r[:success] }

def run(*args, label:, notify_on: NOTIFY_FAILURE)
  ohai(label)
  print output = Utils.popen_read(*args, err: :out)

  if notify_on.call({success: $CHILD_STATUS.success?, output: output})
    notify(group: label, subtitle: label, message: output, terminal: args)
  end
end


puts ""
safe_system "date"

if `pmset -g batt` =~ /Battery Power/
  puts "skipping brew unattended-upgrade on battery"
  exit 0
end

run HOMEBREW_BREW_FILE, "doctor",
  label: "brew doctor"

run! HOMEBREW_BREW_FILE, "update", label: "brew update"
run! HOMEBREW_BREW_FILE, "upgrade", label: "brew upgrade"
run! MAS, "upgrade", label: "mas upgrade"

if bundle_file
  run! HOMEBREW_BREW_FILE, "bundle", "install", "--no-lock", "--file=#{bundle_file}",
    label: "brew bundle install"
end

run! HOMEBREW_BREW_FILE, "cleanup", label: "brew cleanup"

if bundle_file
  run HOMEBREW_BREW_FILE, "bundle", "cleanup", "--file=#{bundle_file}",
    label: "brew bundle cleanup",
    notify_on: ->(r) { r[:output] != "" }
end

ohai "success"