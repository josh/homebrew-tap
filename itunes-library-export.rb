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

  test do
    system bin/"itunes-library-export", "--help"
  end
end
