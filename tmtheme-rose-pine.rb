class TmthemeRosePine < Formula
  desc "Soho vibes for TextMate"
  homepage "https://github.com/rose-pine/tm-theme"
  url "https://github.com/rose-pine/tm-theme/archive/c4235f9a65fd180ac0f5e4396e3a86e21a0884ec.tar.gz"
  version "0.1.0"
  sha256 "16ae5da655996b7ac3ad7ec474ec08cecbc65790b5463f1822f8cb5c236ac3fe"

  def install
    pkgshare.install Dir["dist/themes/*"]
  end

  def caveats
    <<~EOS
      ln -s "#{opt_pkgshare}/rose-pine.tmTheme" ...
      ln -s "#{opt_pkgshare}/rose-pine-moon.tmTheme" ...
      ln -s "#{opt_pkgshare}/rose-pine-dawn.tmTheme" ...
    EOS
  end

  test do
    assert_path_exists (pkgshare / "rose-pine.tmTheme")
  end
end
