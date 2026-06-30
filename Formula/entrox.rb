# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.55.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.55.1/entrox-cli-macos-arm64.zip"
    sha256 "18d007aec045df10533b00e2186f6860cf63c27e3cc46c62c0f18a5b4bbfdc74"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.55.1/entrox-cli-linux-x64.zip"
    sha256 "db9b3041c34e8ab93e37d4d186db3e4728497c23cfe72c13d9c0b7e532f7a8be"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
