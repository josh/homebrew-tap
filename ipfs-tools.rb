# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmSoTAYtMFjmkSju4FP1F8fyAy94rhAKLS8bNNjoSoHHoH"
  mirror "https://ipfs.io/ipfs/QmSoTAYtMFjmkSju4FP1F8fyAy94rhAKLS8bNNjoSoHHoH"
  version "68"
  sha256 "91b8489fdcf4d6085474cc8310d68eef722842b04e5f8d8526858cccea4ecb24"
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
