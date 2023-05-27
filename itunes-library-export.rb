class ItunesLibraryExport < Formula
  desc "A command line tool to export iTunes Library XML files"
  homepage "https://github.com/josh/itunes-library-export"
  url "https://github.com/josh/itunes-library-export/archive/v0.1.1.tar.gz"
  sha256 "9323edcbb0683e45ba4b2b0d4be423ddb3fd903c62535d3c83f9de9ae11b2756"
  
  depends_on xcode: ["12.5", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/itunes-library-export"
  end

  test do
    system bin/"itunes-library-export", "--help"
  end
end
