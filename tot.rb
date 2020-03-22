class Tot < Formula
  desc "tot"
  homepage "A shell script for Tot"
  version "991596a5a3980e93365c212226e6751fb6a843fe"
  url "https://gist.githubusercontent.com/chockenberry/d33ef5b6e6da4a3e4aa9b07b093d3c23/raw/#{version}/tot.sh"
  sha256 "f1cb58e85e39721e9a32b38146c1d07cdd6ee64e06d2fc36821b1ab46fe1fc58"
  head "https://gist.github.com/chockenberry/d33ef5b6e6da4a3e4aa9b07b093d3c23"

  def install
    mv "tot.sh", "tot"
    bin.install "tot"
  end
end
