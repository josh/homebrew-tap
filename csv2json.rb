class Csv2json < Formula
  desc "A humble CSV tool, friend of jq"
  homepage "https://github.com/josh/csv2json"
  version "0.1.0"
  url "https://github.com/josh/csv2json/archive/v#{version}.tar.gz"
  sha256 "21ebb2365e5b2ecf4e02b7b7b3fc76f08e511202e880eaf05e1bf1f229a6a69d"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/csv2json"
  end

  test do
    system bin/"csv2json", "--help"
  end
end
