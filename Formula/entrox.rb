# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.24.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-macos-arm64.zip"
    sha256 "20e4b6b38a825d080298556962b33442e0531155eed9598ecfadcedb22d55d38"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-linux-x64.zip"
    sha256 "cc2f3e27690629920ad12469bdbdf86be5359f35e1cb312b9c41a27a40e61ad6"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
