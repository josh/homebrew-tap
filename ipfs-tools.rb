# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmQ47tZFpnzQBMm5Vh6jm6eyRgZALF5DrmjmkNTJFgFHuw"
  mirror "https://ipfs.io/ipfs/QmQ47tZFpnzQBMm5Vh6jm6eyRgZALF5DrmjmkNTJFgFHuw"
  version "43"
  sha256 "36849cd5f29430ce8e3f92ca6acb745392735e58c422b993db4b0ab22e379574"
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
