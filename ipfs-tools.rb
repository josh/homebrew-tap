# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmUUt1PTPC82PMdTJ1HNrqdBxJ2pw97HnBJRHcn49h3kaw"
  mirror "https://ipfs.io/ipfs/QmUUt1PTPC82PMdTJ1HNrqdBxJ2pw97HnBJRHcn49h3kaw"
  version "61"
  sha256 "a294e7bb3c1ae2832223b5fbfc8aa30245aa71d6d970e7cb1791b03283efdc0b"
  license "MIT"
  head "http://127.0.0.1:8080/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig",
    using: :git, branch: "main"

  depends_on "ipfs"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "which", "ipfs-add-git"
  end
end
