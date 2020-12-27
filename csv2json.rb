# typed: false
# frozen_string_literal: true

class Csv2json < Formula
  desc "Humble CSV tool, friend of jq"
  homepage "https://github.com/josh/csv2json"
  url "https://github.com/josh/csv2json/archive/v1.0.0.tar.gz"
  sha256 "08709cdbcbf06918b14781c72d945c4828a5de02f60d7acc12d292d1d01dffcb"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/csv2json"
  end

  test do
    system bin/"csv2json", "--help"
  end
end
