# typed: false
# frozen_string_literal: true

# :nodoc:
class Csv2json < Formula
  desc "Humble CSV tool, friend of jq"
  homepage "https://github.com/josh/csv2json"
  url "https://github.com/josh/csv2json/archive/v1.0.1.tar.gz"
  sha256 "62ad05ea0855c68497e6bbb0ca59932039ca600dba693593575daf9382d408a9"

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/csv2json"
  end

  test do
    system bin/"csv2json", "--help"
  end
end
