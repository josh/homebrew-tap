class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "4ab2295127a778361ff0ba47aab2a63c79effbff7e00f958e7c77294b96c4d47"
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
