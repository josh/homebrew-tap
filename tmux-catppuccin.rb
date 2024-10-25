class TmuxCatppuccin < Formula
  desc "Soothing pastel theme for Tmux!"
  homepage "https://github.com/catppuccin/tmux"
  url "https://github.com/catppuccin/tmux/archive/refs/tags/v2.1.tar.gz"
  sha256 "f1a8999f75049af2d22a38446495ec26b4333a718c633cf81dea9b53474a794a"
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
