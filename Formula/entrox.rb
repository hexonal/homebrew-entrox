# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.4.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-macos-arm64.zip"
    sha256 "b1ab93414a21f1f9345fb420f3f9f16e3925377762aeb9a50fd89c0496a49972"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-linux-x64.zip"
    sha256 "540c14d0258a0aaa48ca9a2d69b039a95f31ffd3fdd138573ff2c2060776cc55"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
