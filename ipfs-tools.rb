# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmY6m25fvQN9F98wRnqT8V9TjVNUeQHZVxtqv77k2Jh2YB"
  mirror "https://ipfs.io/ipfs/QmY6m25fvQN9F98wRnqT8V9TjVNUeQHZVxtqv77k2Jh2YB"
  version "73"
  sha256 "2de639d198a462c7f9f5a600ca8eb9d8109dcf714412b0f5cc3c51482e9759b0"
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
