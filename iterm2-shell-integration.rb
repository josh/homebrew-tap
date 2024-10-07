class Iterm2ShellIntegration < Formula
  desc "Shell integration and utilities for iTerm2"
  homepage "https://github.com/gnachman/iTerm2-shell-integration"
  url "https://github.com/gnachman/iTerm2-shell-integration/archive/c2a41928ff1e224ecaa054035331b2a8aa7416a3.tar.gz"
  version "0.1.0"
  sha256 "48f9e724868004032c752e952956261128d273f953409da9e13714742a317f4c"
  license "GPL-2.0-only"

  keg_only "it should only added to $PATH when using iTerm2"

  def install
    bin.install Dir["utilities/*"]
    pkgshare.install "shell_integration/bash" => "iterm2_shell_integration.bash"
    pkgshare.install "shell_integration/fish" => "iterm2_shell_integration.fish"
    pkgshare.install "shell_integration/tcsh" => "iterm2_shell_integration.tcsh"
    pkgshare.install "shell_integration/zsh" => "iterm2_shell_integration.zsh"
  end

  def caveats
    shell = ENV["SHELL"].split("/").last
    <<~EOS
      Add the following to your shell rc:
        source "#{opt_pkgshare}/iterm2_shell_integration.#{shell}"
    EOS
  end
end
