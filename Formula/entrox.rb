# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.35.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.35.1/entrox-cli-macos-arm64.zip"
    sha256 "21233161454559f7c0ab403cdf3780ce6863daac2012cb9c52884805620e7708"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.35.1/entrox-cli-linux-x64.zip"
    sha256 "28245cc25c5b375467b09309849b3c3144f212d7d3a2fcd4ca46927505cfd3af"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
