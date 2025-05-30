class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "330d54f949cd4f05dd7f169c660bfcd880e999633aa9f5bf6ed24a358b43f5ae"
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
