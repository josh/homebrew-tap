class TmuxCatppuccin < Formula
  desc "Soothing pastel theme for Tmux!"
  homepage "https://github.com/catppuccin/tmux"
  url "https://github.com/catppuccin/tmux/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "c03df19a27534db97b996408aede24e6563b896b323a303615858dac23f38b22"
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
