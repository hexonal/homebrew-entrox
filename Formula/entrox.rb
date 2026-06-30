# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.54.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.54.1/entrox-cli-macos-arm64.zip"
    sha256 "46376d98d2049d80de3b1144ff7c240f08c1fc28a580f256ea0bbb89892cef7a"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.54.1/entrox-cli-linux-x64.zip"
    sha256 "8470cb1db4d587130973a63ea2cce1a0bb1e05467fc42f8614de85294eb268bc"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
