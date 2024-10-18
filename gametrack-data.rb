class GametrackData < Formula
  include Language::Python::Virtualenv

  desc "Export GameTrack data to CSV"
  homepage "https://josh.github.io/gametrack-data/"
  url "https://github.com/josh/gametrack-data/archive/49003435221fcd9baa76ffada8ccbffafdee6634.tar.gz"
  version "0.1.0"
  sha256 "100d8a8dbe0d788d3fa939ecdd5cb87a7af3327dfede2386193bccbd8e8fa2f6"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    42
  end
end
