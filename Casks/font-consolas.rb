cask "font-consolas" do
  version "1.2"
  sha256 "04b860e674755d3ce48d1fa06b2247fb3fad7010b4cb6ea073f1b3c565ea0353"

  url "https://github.com/misuchiru03/font-consolas-ttf/archive/refs/tags/#{version}.tar.gz"
  name "Consolas"
  homepage "https://github.com/misuchiru03/font-consolas-ttf"

  font "font-consolas-ttf-#{version}/fonts/Consolas.ttf"
end
