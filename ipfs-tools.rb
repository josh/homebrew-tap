# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmXC7CNLDAAWZuWfjEYm5jncCdvZENg9PC9VQEEYLWdPW5"
  mirror "https://ipfs.io/ipfs/QmXC7CNLDAAWZuWfjEYm5jncCdvZENg9PC9VQEEYLWdPW5"
  version "42"
  sha256 "e724040a190e04317e3d68b9ed1f2464967e405b51d25fcf435404c71a168f09"
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
