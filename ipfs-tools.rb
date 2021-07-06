# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmZ9U4CwM4q6FPVpwBANvuQz2AQBtnfGQsFjCqciS9KupA"
  mirror "https://ipfs.io/ipfs/QmZ9U4CwM4q6FPVpwBANvuQz2AQBtnfGQsFjCqciS9KupA"
  version "70"
  sha256 "52b96f77c032e3e07669a48e72423d13ad02b64696584cf00c2f880de2b72a41"
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
