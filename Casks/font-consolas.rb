cask "font-consolas" do
  version "1.2"
  sha256 "19d0d128bbef6292257be7eba610d5722beb82aafc6ca1e8c4d04c5f6dce3e67"

  url "https://github.com/misuchiru03/font-consolas-ttf/archive/refs/tags/#{version}.zip"
  name "Consolas"
  homepage "https://github.com/misuchiru03/font-consolas-ttf"

  font "font-consolas-ttf-#{version}/fonts/Consolas.ttf"
end
