class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "bff85d2dc7215ec9cc86e0b2b7060489143acce6485cb79ed0f220368d2d7a5d"
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
