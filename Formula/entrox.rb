# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.42.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.42.1/entrox-cli-macos-arm64.zip"
    sha256 "c09bb80c6f81ce11a135bf8644745e8020aa99690e2c7eba56799f84ed9e660b"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.42.1/entrox-cli-linux-x64.zip"
    sha256 "5c44a990ae1e4b168790af6039bdfb119eb8ffb37f5bdcdc52ac39849d51c67a"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
