class TmuxTokyoNight < Formula
  desc "Tokyo Night tmux theme directly inspired from Tokyo Night vim theme"
  homepage "https://github.com/fabioluciano/tmux-tokyo-night"
  url "https://github.com/fabioluciano/tmux-tokyo-night/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "c05a43997e877f2fee6f11de331658b9cd2724f1f46f1fa95a2158665583730f"

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
