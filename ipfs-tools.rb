# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmQQmP1UPtYCtYnsZ9XZ6hgEFSfuBcdBRzhyjiXCD21dj3"
  mirror "https://ipfs.io/ipfs/QmQQmP1UPtYCtYnsZ9XZ6hgEFSfuBcdBRzhyjiXCD21dj3"
  version "62"
  sha256 "719755967f5d2c18e92bf2a76b8408d9f03b571f4cf45ff963dbc7616741dbe4"
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
