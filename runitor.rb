class Runitor < Formula
  desc "A command runner with healthchecks.io integration"
  homepage "https://github.com/bdd/runitor"
  url "https://github.com/bdd/runitor/releases/download/v1.3.0/runitor-v1.3.0-darwin-arm64"
  version "1.3.0"
  sha256 "00a2db004d338fdd9cd475cc0a36e9758f7885c11d92b1ffc917b80939a76d5d"
  license "0BSD"

  def install
    bin.install "runitor-v#{version}-darwin-arm64" => "runitor"
  end

  test do
    system bin/"runitor", "--version"
  end
end
