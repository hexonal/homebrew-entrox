# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.29.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.29.1/entrox-cli-macos-arm64.zip"
    sha256 "0c5dd276d4395a83dcbeb2210ab8555d6ccd936dd6d5ecb0ceca4916e260d418"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.29.1/entrox-cli-linux-x64.zip"
    sha256 "5fca46973adee6012a46cfc0d4cc02e01d31a86706bcd5b622b348e2ab57f455"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
