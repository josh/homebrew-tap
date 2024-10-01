class TmuxTokyoNight < Formula
  desc "Tokyo Night tmux theme directly inspired from Tokyo Night vim theme"
  homepage "https://github.com/fabioluciano/tmux-tokyo-night"
  url "https://github.com/fabioluciano/tmux-tokyo-night/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "f544ede6fc6997fc2f402353f641ae2193f4ad5943b99528bc685ab21d00f00c"

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
