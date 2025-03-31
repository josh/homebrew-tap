class ResticAgeKey < Formula
  desc "Use asymmetric age keys instead of a password on your restic repository"
  homepage "https://github.com/josh/restic-age-key"
  url "https://github.com/josh/restic-age-key/archive/c5c0736997b65859fd58238851675b15afb679db.tar.gz"
  version "0.0.0"
  sha256 "f69cb04c28b654b131c85d7601b7166b2d961c380812eb403bf3b0167c406fd2"
  license "MIT"

  depends_on "go" => :build
  depends_on "restic"
  depends_on "age"

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
