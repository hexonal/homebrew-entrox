# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.50.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.50.1/entrox-cli-macos-arm64.zip"
    sha256 "9558eed2b091f71401547ca7074bd5ecc60025ee5fb041e9f3b1d86af7c41771"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.50.1/entrox-cli-linux-x64.zip"
    sha256 "0d633abef9fe03b54c4e9e53484c00c88888e80ced46c75e8dfffea68aa7388a"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
