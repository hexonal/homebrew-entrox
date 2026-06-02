# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.34.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.34.1/entrox-cli-macos-arm64.zip"
    sha256 "fc690ecbfa03a35c4858c0f19957077410a89bd9e16d3a4299b6bd0f794d1258"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.34.1/entrox-cli-linux-x64.zip"
    sha256 "168ed41910967de9f9529aebc16653f64b585647ae1af89e81c70478be18d14a"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
