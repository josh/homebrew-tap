class Ollama < Formula
  desc "Get up and running with large language models locally"
  homepage "https://ollama.ai"
  url "https://github.com/jmorganca/ollama/releases/download/v0.0.10/ollama-darwin-arm64"
  sha256 "cab5d08766b66d278618811f668040aca03f022d7b78b72928ca18447b4dfb3d"
  license "MIT"

  service do
    run [opt_bin/"ollama", "serve"]
    keep_alive true
    log_path var/"log/ollama.log"
    error_log_path var/"log/ollama.log"
  end

  def install
    bin.install "ollama-darwin-arm64" => "ollama"
  end

  test do
    system opt_bin/"ollama", "help"
  end
end
