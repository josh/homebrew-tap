class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "0156508f456916cda07c6112f7700c0ea29c47ba1396a554e349cfa799cfb150"
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
