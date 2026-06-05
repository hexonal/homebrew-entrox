# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.40.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.40.1/entrox-cli-macos-arm64.zip"
    sha256 "886ec58411a8b745afa9a801835ed189d9fad6b9f76f5684598786d797883e01"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.40.1/entrox-cli-linux-x64.zip"
    sha256 "3c89e32716d8a4aa1319c89befa8163c46d9323ebe9708e855fb47e4d29089ee"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
