# typed: false
# frozen_string_literal: true

# :nodoc:
class Displayrcd < Formula
  desc "Run a script when your Mac changes displays"
  homepage "https://github.com/josh/displayrcd"
  url "https://github.com/josh/displayrcd/archive/v0.2.1.tar.gz"
  sha256 "b3206bb9c48d69b1672a6f1230831684c16f5abeaaf8315dce18a57c822aa9da"
  head "https://github.com/josh/displayrcd.git"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/displayrcd"
  end

  plist_options manual: "displayrcd"

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
            <string>#{opt_bin}/displayrcd</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/displayrcd.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/displayrcd.log</string>
          <key>KeepAlive</key>
          <true/>
          <key>RunAtLoad</key>
          <true/>
        </dict>
      </plist>
    EOS
  end

  test do
    system bin/"displayrcd", "--help"
  end
end
