# typed: false
# frozen_string_literal: true

# :nodoc:
class BbeditCli < Formula
  desc "BBEdit Command-Line Tools"
  homepage "https://www.barebones.com/products/bbedit/index.html"
  url "https://github.com/josh/homebrew-tap/raw/4b9c17f996fd897382ad812a472a551d116f7172/empty.tar"
  version "0.1.0"
  sha256 "9bfac43f415467832a8470a10da79435da99c950cd20b7fae458eb2144f0ff7a"

  livecheck do
    skip "Unsupported"
  end

  conflicts_with cask: "bbedit"

  def install
    bin.install_symlink "/Applications/BBEdit.app/Contents/Helpers/bbedit_tool" => "bbedit"
    bin.install_symlink "/Applications/BBEdit.app/Contents/Helpers/bbdiff" => "bbdiff"
    bin.install_symlink "/Applications/BBEdit.app/Contents/Helpers/bbfind" => "bbfind"
    bin.install_symlink "/Applications/BBEdit.app/Contents/Helpers/bbresults" => "bbresults"
    man1.install_symlink "/Applications/BBEdit.app/Contents/Resources/bbedit.1" => "bbedit.1"
    man1.install_symlink "/Applications/BBEdit.app/Contents/Resources/bbdiff.1" => "bbdiff.1"
    man1.install_symlink "/Applications/BBEdit.app/Contents/Resources/bbfind.1" => "bbfind.1"
    man1.install_symlink "/Applications/BBEdit.app/Contents/Resources/bbresults.1" => "bbresults.1"
  end

  test do
    system bin/"bbedit", "--help"
  end
end
