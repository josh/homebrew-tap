# typed: false
# frozen_string_literal: true

# :nodoc:
class IcloudBackupUtils < Formula
  desc "Scripts creating backups of iCloud data"
  homepage "https://github.com/josh/icloud-backup-utils"
  url "https://github.com/josh/icloud-backup-utils/archive/v0.2.0.tar.gz"
  sha256 "2003ac17751f3663320f68856d788bbeba0d3a3a0e82805d342ffeda69ca5055"
  head "https://github.com/josh/icloud-backup-utils.git"

  def install
    bin.install "icloud-backup"
  end

  plist_options manual: "icloud-backup"

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
            <string>#{opt_bin}/icloud-backup</string>
            <string>#{ENV["HOME"]}/Backups</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/icloud-backup.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/icloud-backup.log</string>
          <key>StartCalendarInterval</key>
          <array>
            <dict>
              <key>Hour</key>
              <integer>2</integer>
              <key>Minute</key>
              <integer>0</integer>
            </dict>
          </array>
        </dict>
      </plist>
    EOS
  end

  test do
    system bin/"icloud-backup", "--help"
  end
end
