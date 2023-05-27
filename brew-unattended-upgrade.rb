class BrewUnattendedUpgrade < Formula
  desc "Homebrew unattended upgrade service"
  homepage "https://github.com/josh/homebrew-tap/blob/main/cmd/brew-unattended-upgrade.rb"
  url "https://github.com/josh/homebrew-tap/raw/4b9c17f996fd897382ad812a472a551d116f7172/empty.tar"
  version "0.1.0"
  sha256 "9bfac43f415467832a8470a10da79435da99c950cd20b7fae458eb2144f0ff7a"

  livecheck do
    skip "Built into josh/homebrew-tap"
  end

  depends_on "terminal-notifier"

  def install
    (bin/"brew-unattended-upgrade").write <<~EOF
      #!/bin/sh
      exec brew unattended-upgrade
    EOF
    chmod 0755, bin/"brew-unattended-upgrade"
  end

  plist_options manual: "brew unattended-upgrade"

  def plist
    <<~EOS
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
          <integer>86400</integer>
        </dict>
      </plist>
    EOS
  end

  test do
    42
  end
end
