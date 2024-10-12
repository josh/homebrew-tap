class TmuxCatppuccin < Formula
  desc "Soothing pastel theme for Tmux!"
  homepage "https://github.com/catppuccin/tmux"
  url "https://github.com/catppuccin/tmux/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "3bfdff2ceebaab510867c96b133012111de075e768ccd425aab8a39947bf51bd"
  license "MIT"

  depends_on "tmux"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Add the following to your tmux.conf:
        run-shell '#{opt_pkgshare}/catppuccin.tmux'
    EOS
  end

  test do
    assert_predicate (pkgshare / "catppuccin.tmux"), :exist?
  end
end
