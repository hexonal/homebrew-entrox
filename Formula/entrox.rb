# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.48.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.48.1/entrox-cli-macos-arm64.zip"
    sha256 "185a24cfff9878a31a41c7ff5d328114b22911399d522a7adcff7a486bcf2ae4"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.48.1/entrox-cli-linux-x64.zip"
    sha256 "67f618f7bdbddd946fc2d9fb51d5b89a50c58a3b903114094ea9cc43fdd92684"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
