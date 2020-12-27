# typed: false
# frozen_string_literal: true

cask "sort-lines" do
  version "a87b15e411cbe6ed4c07431df7a4feb42e07d7ec"
  sha256 "b9034bff1122b3ccf80b3dbdd05e0c1bfae8ebf2382f555c64741169a5570d27"

  url "https://github.com/josh/homebrew-tap/archive/#{version}.tar.gz"
  name "Sort Lines"

  service "homebrew-tap-#{version}/Sort Lines.workflow"
end
