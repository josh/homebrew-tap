class TmuxTokyoNight < Formula
  desc "Tokyo Night tmux theme directly inspired from Tokyo Night vim theme"
  homepage "https://github.com/fabioluciano/tmux-tokyo-night"
  url "https://github.com/fabioluciano/tmux-tokyo-night/archive/refs/tags/v1.9.0.tar.gz"
  sha256 "2966bb0bf3926478dc1a5acc15f1afa73b68595f23a8101174a42022a9d0bc7a"

  depends_on "tmux"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Add the following to your tmux.conf:
        run-shell '#{opt_pkgshare}/tmux-tokyo-night.tmux'
    EOS
  end

  test do
    assert_predicate (pkgshare / "tmux-tokyo-night.tmux"), :exist?
  end
end
