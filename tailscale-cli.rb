class TailscaleCli < Formula
  desc "Tailscale Command-Line Tool"
  homepage "https://tailscale.com/"
  url "https://github.com/josh/homebrew-tap/raw/4b9c17f996fd897382ad812a472a551d116f7172/empty.tar"
  version "0.1.0"
  sha256 "9bfac43f415467832a8470a10da79435da99c950cd20b7fae458eb2144f0ff7a"

  livecheck do
    skip "Unsupported"
  end

  conflicts_with "tailscale"

  def install
    (bin/"tailscale").write <<~EOS
      #!/bin/bash
      exec /Applications/Tailscale.app/Contents/MacOS/Tailscale "$@"
    EOS
  end

  test do
    system bin/"tailscale", "--help"
  end
end
