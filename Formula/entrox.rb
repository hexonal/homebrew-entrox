# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.37.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.37.1/entrox-cli-macos-arm64.zip"
    sha256 "a5bda9a01318f6dfcbc1d2ff7efad403e4ca9e94ccdf2f9717823674af327314"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.37.1/entrox-cli-linux-x64.zip"
    sha256 "6d1833ea5ca7c0919adfc39e74037b08cb186ccc2cd45d440967059bf868f209"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
