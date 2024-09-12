class TmuxTokyoNight < Formula
  desc "Tokyo Night tmux theme directly inspired from Tokyo Night vim theme"
  homepage "https://github.com/fabioluciano/tmux-tokyo-night"
  url "https://github.com/fabioluciano/tmux-tokyo-night/archive/refs/tags/v1.7.1.tar.gz"
  sha256 "e51d722bbf4b98e7fb2398ad496ee64bc47bd518c061ec504bc233fe11f92539"

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
