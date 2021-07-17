# typed: false
# frozen_string_literal: true

# :nodoc:
class IpfsTools < Formula
  desc "Scripts for adding and fetching IPFS content"
  homepage "https://ipfs.io/ipns/k51qzi5uqu5dj1ls01edx78x9fqdwxims5ny3cpg5qyi6khil75k8j1ozs92oq"
  url "http://127.0.0.1:8080/ipfs/QmNhYtbP1KNdjzbacL9rB9bn3QSmFuWjvnXsy1BSpxymqe"
  mirror "https://ipfs.io/ipfs/QmNhYtbP1KNdjzbacL9rB9bn3QSmFuWjvnXsy1BSpxymqe"
  version "79"
  sha256 "622a88e5f11bfe77d7a7456e0d7d0cebc70267162da118c1f8dfd8e879fa4c2d"
  license "MIT"
  head "http://127.0.0.1:8080/ipns/k51qzi5uqu5dj1ls01edx78x9fqdwxims5ny3cpg5qyi6khil75k8j1ozs92oq",
    using: :git, branch: "main"

  depends_on "ipfs"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "which", "ipfs-add-git"
  end
end
