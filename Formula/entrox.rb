# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.47.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.47.1/entrox-cli-macos-arm64.zip"
    sha256 "ee7a328910cd2a2f3f7f5127e17971a8c9e556b0f32cdd084914755f0f2870d7"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.47.1/entrox-cli-linux-x64.zip"
    sha256 "aa6653bb54a752e6ebe53cd454e82219b6db95b9cb55b281389e8f607cb1f31d"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
