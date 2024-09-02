class TmuxYank < Formula
  desc "Tmux plugin for copying to system clipboard"
  homepage "https://tmux-plugins.github.io/tmux-yank"
  url "https://github.com/tmux-plugins/tmux-yank/archive/acfd36e4fcba99f8310a7dfb432111c242fe7392.tar.gz"
  version "2.1.0-82-gacfd36e"
  sha256 "702c4f164fee51c70798264917e9c53854c2e357ddf6f1982ed89dba563d4e84"
  license "MIT"

  depends_on "reattach-to-user-namespace"
  depends_on "tmux"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Add the following to your tmux.conf:
        run-shell '#{opt_pkgshare}/yank.tmux'
    EOS
  end

  test do
    assert_empty shell_output(pkgshare / "yank.tmux")
  end
end
