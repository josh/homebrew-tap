class GametrackData < Formula
  include Language::Python::Virtualenv

  desc "Export GameTrack data to CSV"
  homepage "https://github.com/josh/gametrack-data"
  url "https://github.com/josh/gametrack-data/archive/v1.0.0.tar.gz"
  sha256 "93f71941575a3f4a367659eafd374977beabc3c14f088cf47bc09edcc0b1ce05"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"gametrack-data", "--help"
  end
end
