class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "7742fa464836cad0646cf9aa5593a050fac5d456fc2e70cd64b5c416cbe89195"
  license "MIT"

  depends_on "go" => :build
  depends_on "age"
  depends_on "restic"

  def install
    ldflags = %W[
      -X main.Version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    system bin/"restic-age-key", "--help"
  end
end
