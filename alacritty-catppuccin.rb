class AlacrittyCatppuccin < Formula
  desc "Soothing pastel theme for Alacritty"
  homepage "https://github.com/catppuccin/alacritty"
  url "https://github.com/catppuccin/alacritty/archive/343cf8d65459ac8f6449cc98dd3648bcbd7e3766.tar.gz"
  sha256 "7d23546be126ce0651809de72d883ade83bad1e876bcb90ac2c039d2cc39fd3b"
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
    assert_empty shell_output(pkgshare / "catppuccin-mocha.toml")
  end
end
