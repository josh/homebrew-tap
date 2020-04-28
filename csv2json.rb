class Csv2json < Formula
  desc "A humble CSV tool, friend of jq"
  homepage "https://github.com/josh/csv2json"
  version "0.2.0"
  url "https://github.com/josh/csv2json/archive/v#{version}.tar.gz"
  sha256 "0c0e8864125839a399b464f11ecc0e04746558985e980f7df266191a62bf198a"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/csv2json"
  end

  test do
    system bin/"csv2json", "--help"
  end
end
