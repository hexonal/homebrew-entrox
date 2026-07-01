# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.56.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.56.1/entrox-cli-macos-arm64.zip"
    sha256 "69e332c303e811e119be5e2bee3dd53ab97d0ea04993c55153c129918cc22a37"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.56.1/entrox-cli-linux-x64.zip"
    sha256 "eeeb96bbab8ba15b8730017918f5d6a819c6e7771c4ba1aabb5da4750d2bf3f5"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
