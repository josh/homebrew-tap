class BrewUnattendedUpgrade < Formula
  desc "Homebrew unattended upgrade service"
  url "https://blank.org"
  version "0.1.0"
  sha256 "69917e3a76d270be4e4f07ce97f008b3a48e9cf5cc2283e44c7f69797a21918f"

  depends_on "terminal-notifier"

  def install
    (bin/"brew-unattended-upgrade").write <<~EOF
      #!/bin/sh
      exec brew unattended-upgrade
    EOF
    chmod 0755, bin/"brew-unattended-upgrade"
  end

  plist_options :manual => "brew unattended-upgrade"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{HOMEBREW_BREW_FILE}</string>
          <string>unattended-upgrade</string>
        </array>
        <key>EnvironmentVariables</key>
        <dict>
          <key>PATH</key>
          <string>/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin</string>
        </dict>
        <key>RunAtLoad</key>
        <true/>
        <key>StandardErrorPath</key>
        <string>#{var}/log/brew-unattended-upgrade.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/brew-unattended-upgrade.log</string>
        <key>StartInterval</key>
        <integer>3600</integer>
      </dict>
    </plist>
    EOS
  end
end