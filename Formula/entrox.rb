# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.52.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.52.1/entrox-cli-macos-arm64.zip"
    sha256 "c6ed1ea9ec6131b001c17a3799748191e65b4b342cba2083d8b049ce49ded9cd"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.52.1/entrox-cli-linux-x64.zip"
    sha256 "ac7bb3bbf60d38947bb15b8aa4e2a229ba342d9ce8da4cbfb0b880ccaa45c25f"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
