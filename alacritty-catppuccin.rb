class AlacrittyCatppuccin < Formula
  desc "Soothing pastel theme for Alacritty"
  homepage "https://github.com/catppuccin/alacritty"
  url "https://github.com/catppuccin/alacritty/archive/f6cb5a5c2b404cdaceaff193b9c52317f62c62f7.tar.gz"
  sha256 "6194d5d5e36d4e16d2ebe1d5ff9d8315811aedb045abee571acf9c7e3973d5de"
  license "MIT"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Import the desired flavour config in your alacritty.toml:
        import = [
          # "#{opt_pkgshare}/catppuccin-latte.toml"
          # "#{opt_pkgshare}/catppuccin-frappe.toml"
          # "#{opt_pkgshare}/catppuccin-macchiato.toml"
          "#{opt_pkgshare}/catppuccin-mocha.toml"
        ]
    EOS
  end

  test do
    assert_predicate (pkgshare / "catppuccin-mocha.toml"), :exist?
  end
end
