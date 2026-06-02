# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.30.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.30.1/entrox-cli-macos-arm64.zip"
    sha256 "0b00ecc55c422cb26cf1bf3382e4bfc67843ca21e7b16d561420fbb904712e76"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.30.1/entrox-cli-linux-x64.zip"
    sha256 "33eaf5d1a7f438c8ba261997bdf8b263a522bf2a7cb9f64e94c73e6edc34fd99"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
