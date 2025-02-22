class BatCatppuccin < Formula
  desc "Soothing pastel theme for Bat"
  homepage "https://github.com/catppuccin/bat"
  url "https://github.com/catppuccin/bat/archive/d2bbee4f7e7d5bac63c054e4d8eca57954b31471.tar.gz"
  version "0.1.0"
  sha256 "c10cdfdbc5234dd263856be5a9b5717011c7ab331ba249a67dc96070789171fb"
  license "MIT"

  depends_on "bat"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      ln -s "#{opt_pkgshare}/themes/Catppuccin Frappe.tmTheme" "$(bat --config-dir)/themes/Catppuccin Frappe.tmTheme"
      ln -s "#{opt_pkgshare}/themes/Catppuccin Latte.tmTheme" "$(bat --config-dir)/themes/Catppuccin Latte.tmTheme"
      ln -s "#{opt_pkgshare}/themes/Catppuccin Macchiato.tmTheme" "$(bat --config-dir)/themes/Catppuccin Macchiato.tmTheme"
      ln -s "#{opt_pkgshare}/themes/Catppuccin Mocha.tmTheme" "$(bat --config-dir)/themes/Catppuccin Mocha.tmTheme"
    EOS
  end

  test do
    assert_path_exists (pkgshare / "themes" / "Catppuccin Mocha.tmTheme")
  end
end
