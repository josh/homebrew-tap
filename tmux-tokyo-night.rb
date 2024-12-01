class TmuxTokyoNight < Formula
  desc "Tokyo Night tmux theme directly inspired from Tokyo Night vim theme"
  homepage "https://github.com/fabioluciano/tmux-tokyo-night"
  url "https://github.com/fabioluciano/tmux-tokyo-night/archive/refs/tags/v1.10.0.tar.gz"
  sha256 "95795c1d6b7b523be5ba5fa373bc72b83c6caee6a4ec556f46be89fad9b3cd5e"

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
