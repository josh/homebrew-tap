# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmUtR86WPQrZ2cYFJLY8dPXcTj3gmzK8TPGF84erGg98DX"
  mirror "https://ipfs.io/ipfs/QmUtR86WPQrZ2cYFJLY8dPXcTj3gmzK8TPGF84erGg98DX"
  version "53"
  sha256 "cb3a477dd8df2ee404265524673b7556eb0abcd3c0873ad9b039379ac04a8362"
  license "MIT"
  head "http://127.0.0.1:8080/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig",
    using: :git, branch: "main"

  depends_on "gnu-tar"
  depends_on "ipfs"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "which", "ipfs-add-git"
  end
end
