# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmRbGkLxYizgJx8hggmtHkL8jC1gxt7NrUMd6WzoVxSzij"
  mirror "https://ipfs.io/ipfs/QmRbGkLxYizgJx8hggmtHkL8jC1gxt7NrUMd6WzoVxSzij"
  version "59"
  sha256 "dd06264d0e7c41f37655987404997a88964c3cc80ade14513c9fc2d77915dfc6"
  license "MIT"
  head "http://127.0.0.1:8080/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig",
    using: :git, branch: "main"

  depends_on "gnu-tar"
  #depends_on "ipfs"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "which", "ipfs-add-git"
  end
end
