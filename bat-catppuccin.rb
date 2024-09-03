class BatCatppuccin < Formula
  desc "Soothing pastel theme for Bat"
  homepage "https://github.com/catppuccin/bat"
  url "https://github.com/catppuccin/bat/archive/d3feec47b16a8e99eabb34cdfbaa115541d374fc.tar.gz"
  version "0.1.0"
  sha256 "b25eb5696c544a44f89e060c5504ee35d56584e10bad627fefaf5e9b4842cf78"
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
    assert_empty shell_output(pkgshare / "themes" / "Catppuccin Mocha.tmTheme")
  end
end
