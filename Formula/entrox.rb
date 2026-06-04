# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.39.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.39.1/entrox-cli-macos-arm64.zip"
    sha256 "28ac3ca4f1b0f9781f841fcb9354f1fd9b18665d0fabad7676c0e035d454a3ca"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.39.1/entrox-cli-linux-x64.zip"
    sha256 "a6002c362f121d30e0b6b6915ec1c86f9fa36ea1e38e8cb3730521a8c7d4efba"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
