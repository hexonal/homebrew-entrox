# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.44.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.44.1/entrox-cli-macos-arm64.zip"
    sha256 "f679a0e703cacc8f6c0dfdfea3a4589d60305fed011aa787943421b3635fc0ed"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.44.1/entrox-cli-linux-x64.zip"
    sha256 "83d91abca53ed72d54bce6725a3c00a136f9d78cc3e5fcc5561d52871d667926"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
