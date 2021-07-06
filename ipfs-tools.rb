# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmQxz2NeCh6RJNJ7Vneaqd9A6uUFWtsvdiXKek3WVMH5QY"
  mirror "https://ipfs.io/ipfs/QmQxz2NeCh6RJNJ7Vneaqd9A6uUFWtsvdiXKek3WVMH5QY"
  version "72"
  sha256 "9b1fba57efb64e6a9348da650298d2d125c8592ac5867d791c2a4fd3c046ee65"
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
