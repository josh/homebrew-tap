# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/Qmea5WbbzrNVrjJb3dU8rSovYxpAgoZdKPxAcFmrpNyEX6"
  mirror "https://ipfs.io/ipfs/Qmea5WbbzrNVrjJb3dU8rSovYxpAgoZdKPxAcFmrpNyEX6"
  version "75"
  sha256 "6ef67127d23b03b293d91c26aed0002c3ed5fb8920331d2c5e9262890a771732"
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
