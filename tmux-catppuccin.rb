class TmuxCatppuccin < Formula
  desc "Soothing pastel theme for Tmux!"
  homepage "https://github.com/catppuccin/tmux"
  url "https://github.com/catppuccin/tmux/archive/refs/tags/v2.tar.gz"
  sha256 "9e0d89c0e2559c2c0067373d59cf09b530ae27b4bbe19f3d10cc7e2af5ace8f6"
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
