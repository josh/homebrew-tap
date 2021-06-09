# typed: false
# frozen_string_literal: true

# :nodoc:
class ItunesLibraryExport < Formula
  desc "A command line tool to export iTunes Library XML files"
  homepage "https://github.com/josh/itunes-library-export"
  url "https://github.com/josh/itunes-library-export/archive/v0.1.0.tar.gz"
  sha256 "bacf565fbbaa3686ae9c28f6d59166606fd410f30f6ae42e560b28ebd4d7f342"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/itunes-library-export"
  end
  
  plist_options manual: "itunes-library-export"

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
            <string>#{opt_bin}/itunes-library-export</string>
            <string>--output</string>
            <string>/Users/josh/Music/iTunes/iTunes Music Library.xml</string>
          </array>
          <key>StandardErrorPath</key>
          <string>#{var}/log/itunes-library-export.log</string>
          <key>StandardOutPath</key>
          <string>#{var}/log/itunes-library-export.log</string>
          <key>StartInterval</key>
          <integer>43200</integer>
          <key>RunAtLoad</key>
          <true/>
        </dict>
      </plist>
    EOS
  end

  test do
    system bin/"itunes-library-export", "--help"
  end
end
