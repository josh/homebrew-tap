class SwiftCompletions < Formula
  desc "Swift shell completions"
  homepage "https://swift.org/"
  url "https://github.com/josh/homebrew-tap/raw/4b9c17f996fd897382ad812a472a551d116f7172/empty.tar"
  version MacOS::Xcode.version || "0.1.0"
  sha256 "9bfac43f415467832a8470a10da79435da99c950cd20b7fae458eb2144f0ff7a"

  livecheck do
    skip "Unsupported"
  end

  depends_on xcode: ["12.5", :build]

  def install
    system "swift package completion-tool generate-bash-script > bash"
    system "swift package completion-tool generate-zsh-script > zsh"

    bash_completion.install "bash" => "swift"
    zsh_completion.install "zsh" => "_swift"
  end

  test do
    system "swift", "package", "completion-tool", "--help"
  end
end
