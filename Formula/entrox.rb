# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.41.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.41.1/entrox-cli-macos-arm64.zip"
    sha256 "082d641822fd3501f49c2c62ef9ef576e76f3149d9bd23a3e13bfef83d886629"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.41.1/entrox-cli-linux-x64.zip"
    sha256 "45698db7acd72cd88a8b7f8a3d9521d30d5c8f1bd86b822e3b4496a063dd8e0e"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
