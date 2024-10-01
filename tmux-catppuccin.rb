class TmuxCatppuccin < Formula
  desc "Soothing pastel theme for Tmux!"
  homepage "https://github.com/catppuccin/tmux"
  url "https://github.com/catppuccin/tmux/archive/refs/tags/v0.3.tar.gz"
  sha256 "b0becde32d85b9a2fc30ba09144946b9aa0cee8ecbf747dd9e28613e6e5d0af1"
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
