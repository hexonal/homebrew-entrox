# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.33.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.33.1/entrox-cli-macos-arm64.zip"
    sha256 "8c49b0135374f8ecb49719a734480a7e150e2b57a41e7877cac42fbff95f2c75"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.33.1/entrox-cli-linux-x64.zip"
    sha256 "116d64ae944b48fa327687699e2b5ba5f6ee1d329643317a58973d4840c74daf"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
