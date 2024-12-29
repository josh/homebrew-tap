class GametrackData < Formula
  include Language::Python::Virtualenv

  desc "Export GameTrack data to CSV"
  homepage "https://github.com/josh/gametrack-data"
  url "https://github.com/josh/gametrack-data/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "63054c849f4466b2a420d56beaed0d5e4ef14ae87531d10113c25790818c5b31"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"gametrack-data", "--help"
  end
end
