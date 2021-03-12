# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmXwuifu29XUfWN43b1UpX77RrWz4j2seBz5SZiwbJVkSp"
  mirror "https://ipfs.io/ipfs/QmXwuifu29XUfWN43b1UpX77RrWz4j2seBz5SZiwbJVkSp"
  version "54"
  sha256 "1afdbd0eac849c8a3a77a42104cf567b3a09ad51baef82c89e722f384745e438"
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
