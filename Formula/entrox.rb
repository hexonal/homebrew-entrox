# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.58.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.58.1/entrox-cli-macos-arm64.zip"
    sha256 "e9dec8fd6b1cf2d568d7aba80d1b6badbfa82799b47f062644dc6640dd7ba1f0"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.58.1/entrox-cli-linux-x64.zip"
    sha256 "f8d75d9dd1e93a461185b3d6420c9505c3518e9554fdf400af8946f0a1033802"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
