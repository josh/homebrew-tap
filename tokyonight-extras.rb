class TokyonightExtras < Formula
  desc "Provides TokyoNight extras for numerous other applications"
  homepage "https://github.com/folke/tokyonight.nvim"
  url "https://github.com/folke/tokyonight.nvim/archive/refs/tags/v4.8.0.tar.gz"
  sha256 "a84d4d55ab8bc4529b3599dccb3af31d3657b5a85169ff3f03278736f3694bea"
  license "Apache-2.0"

  def install
    pkgshare.install Dir["extras/*"]
  end

  def caveats
    <<~EOS
      ls '#{opt_pkgshare}/'
    EOS
  end

  test do
    assert_predicate (pkgshare / "alacritty"), :exist?
    assert_predicate (pkgshare / "fzf"), :exist?
    assert_predicate (pkgshare / "tmux"), :exist?
  end
end
