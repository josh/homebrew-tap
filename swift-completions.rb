class SwiftCompletions < Formula
  desc "Swift shell completions"
  url "https://blank.org"
  version "0.1.0"
  sha256 "69917e3a76d270be4e4f07ce97f008b3a48e9cf5cc2283e44c7f69797a21918f"

  def install
    system "swift package completion-tool generate-bash-script > bash"
    system "swift package completion-tool generate-zsh-script > zsh"

    bash_completion.install "bash" => "swift"
    zsh_completion.install "zsh" => "_swift"
  end
end
