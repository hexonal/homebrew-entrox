# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.49.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.49.1/entrox-cli-macos-arm64.zip"
    sha256 "13d7345a06ac07aeba1db016991519d900ef4c8fd6ea4a59106c574ff95f4e90"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.49.1/entrox-cli-linux-x64.zip"
    sha256 "ec4dd481814d1774e2607512c1de4cac10f6084042ae1c495a62b97f2b3b4a23"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
