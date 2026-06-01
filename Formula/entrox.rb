# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.4.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-macos-arm64.zip"
    sha256 "55a63300eef99f0fa7ce04808df3be08c8c7cd86ef164ac227297e44b6c3c33e"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-linux-x64.zip"
    sha256 "8ee1884efb46cc3de0dddd150faf389f5ab36d0c36f04d363115ce98e58b56be"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
