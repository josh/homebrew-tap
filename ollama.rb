class Ollama < Formula
  desc "Get up and running with large language models locally"
  homepage "https://ollama.ai"
  url "https://github.com/jmorganca/ollama/releases/download/v0.0.11/ollama-darwin-arm64"
  sha256 "ee86d34ca1479104382c673047709572437cddcfd2a3b37358177bdc513007c6"
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
