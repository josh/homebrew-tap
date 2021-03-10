# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dgvnd5164dpo8hh4lyjuyk7i113sx2h2y7ski7i7nq4invwn6ig"
  url "http://127.0.0.1:8080/ipfs/QmZ94Vs3WpRNX7mb9rJHmommEoqMHfgFWXbupoq5KV13RL"
  mirror "https://ipfs.io/ipfs/QmZ94Vs3WpRNX7mb9rJHmommEoqMHfgFWXbupoq5KV13RL"
  version "51"
  sha256 "ff1e42e7204bb540c3d3632207f5920634d98c5897a89c86c8d90e91630bc9dc"
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
