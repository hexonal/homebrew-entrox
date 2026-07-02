# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.59.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.59.1/entrox-cli-macos-arm64.zip"
    sha256 "fd3ac2ca9b6ddccffff02481a29b15113b23734f9e7405d59485e07d8af416c0"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.59.1/entrox-cli-linux-x64.zip"
    sha256 "5a92018ee647db12ed76e82bba6f4e95c01a7794ffe7ec6def43b70d60cd52f0"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
