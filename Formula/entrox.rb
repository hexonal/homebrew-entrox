# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.46.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.46.1/entrox-cli-macos-arm64.zip"
    sha256 "497fd5bc4e079980c6995638bb8343994d01daaacfbb0d6013be6e65a335e8e3"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.46.1/entrox-cli-linux-x64.zip"
    sha256 "45dffe4a23193de287cbbcdd5ec840b15f7a4ea771803158d4570f6e8ccdef0b"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
