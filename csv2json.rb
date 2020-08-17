class Csv2json < Formula
  desc "Humble CSV tool, friend of jq"
  homepage "https://github.com/josh/csv2json"
  url "https://github.com/josh/csv2json/archive/v0.2.0.tar.gz"
  sha256 "0c0e8864125839a399b464f11ecc0e04746558985e980f7df266191a62bf198a"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/csv2json"
  end

  test do
    system bin/"csv2json", "--help"
  end
end
