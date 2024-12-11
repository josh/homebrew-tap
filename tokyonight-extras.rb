class TokyonightExtras < Formula
  desc "Provides TokyoNight extras for numerous other applications"
  homepage "https://github.com/folke/tokyonight.nvim"
  url "https://github.com/folke/tokyonight.nvim/archive/refs/tags/v4.11.0.tar.gz"
  sha256 "5c33b9461f81d2b51f81b77c61b60e9fd1a83bc28fa798235d5a1b34e0c44392"
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
