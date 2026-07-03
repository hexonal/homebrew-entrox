# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.60.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.60.1/entrox-cli-macos-arm64.zip"
    sha256 "8ccb22b540c1ca30b02e3511346643ee1ab1d777a9b6d9dd61050cf2a9b165c6"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.60.1/entrox-cli-linux-x64.zip"
    sha256 "e2430e95a87eedb1ecbe4f02a47914f5dfb9d50e4bbde2192ee906a956ea13f0"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
