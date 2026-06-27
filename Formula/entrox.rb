# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.51.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.51.1/entrox-cli-macos-arm64.zip"
    sha256 "4be680613fffef355162ec44c414bdf2101e279d3c04bb7d6826ccacc82ad78a"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.51.1/entrox-cli-linux-x64.zip"
    sha256 "f7776a98c924e997877c0fcce04eb64e38ead3bc525738a01055705d4b190652"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
