class TmuxSensible < Formula
  desc "Basic tmux settings everyone can agree on"
  homepage "https://github.com/tmux-plugins/tmux-sensible"
  url "https://github.com/tmux-plugins/tmux-sensible/archive/25cb91f42d020f675bb0a2ce3fbd3a5d96119efa.tar.gz"
  version "3.0.0-20-g25cb91f"
  sha256 "0af1e1eb7139ded74fe03c1ebba7fb4533f5c7d345e42b73f718a9d822d88903"
  license "MIT"

  depends_on "tmux"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Add the following to your tmux.conf:
        run-shell '#{opt_pkgshare}/sensible.tmux'
    EOS
  end

  test do
    assert_path_exists (pkgshare / "sensible.tmux")
  end
end
