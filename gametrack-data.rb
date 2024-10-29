class GametrackData < Formula
  include Language::Python::Virtualenv

  desc "Export GameTrack data to CSV"
  homepage "https://github.com/josh/gametrack-data"
  url "https://github.com/josh/gametrack-data/archive/bfa4f1d7bd80e0f19d54b14333400664a02bb37d.tar.gz"
  version "0.1.0"
  sha256 "62106c30f9abeb6bbdc6aceac42fd02d4087736761db0f788d91abdadc729291"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    42
  end
end
