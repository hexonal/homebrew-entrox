# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.31.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.31.1/entrox-cli-macos-arm64.zip"
    sha256 "1490ae494799d24215d8b51ae015c40868d3dd8eeb194e85dd588b2d94ad6741"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.31.1/entrox-cli-linux-x64.zip"
    sha256 "2dcb78662e6f23b68688a98e16817c6d1e7dd430059866c0ba97a5bbdb79bbb0"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
