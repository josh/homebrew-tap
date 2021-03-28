# typed: false
# frozen_string_literal: true

# :nodoc:
class DockerOndemand < Formula
  desc "Lazily start and automatically stop Docker for Mac"
  homepage "https://github.com/josh/docker-ondemand"
  url "https://github.com/josh/docker-ondemand/archive/v0.1.0.tar.gz"
  sha256 "af38187bcb3f5daa979c48832336ce05ec91eeeacdc61f76e2aa63c25401a245"
  head "https://github.com/josh/docker-ondemand.git"

  def install
    bin.install "docker-ondemand"
  end

  plist_options manual: "docker-ondemand"

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
            <string>#{opt_bin}/docker-ondemand</string>
            <string>safe-quit</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/docker-ondemand.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/docker-ondemand.log</string>
          <key>StartInterval</key>
          <integer>3600</integer>
        </dict>
      </plist>
    EOS
  end

  test do
    system bin/"docker-ondemand", "--help"
  end
end
