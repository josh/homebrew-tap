# typed: false
# frozen_string_literal: true

# :nodoc:
class Displayrcd < Formula
  desc "Run a script when your Mac changes displays"
  homepage "https://github.com/josh/displayrcd"
  url "https://github.com/josh/displayrcd/archive/v0.1.2.tar.gz"
  sha256 "ba8ac7137b8d2dcc713f54976bab4212b267f055be500d1dece400a4cc9d175c"
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
