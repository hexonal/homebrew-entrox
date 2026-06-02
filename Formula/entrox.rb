# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.28.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.28.1/entrox-cli-macos-arm64.zip"
    sha256 "e84168c14328c32aaf7c0d863c0eada9098ee37bf405013503c565076305e161"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.28.1/entrox-cli-linux-x64.zip"
    sha256 "110b4c9a2626a982a94794f0cf4a156675d3e9ac41eb702c4c4454cd354b5680"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
