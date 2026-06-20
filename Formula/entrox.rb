# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.43.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.43.1/entrox-cli-macos-arm64.zip"
    sha256 "1cf330b965bf7d26343e3d0eeb7c5e0ab526949eb64560840c3378e96ccda00c"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.43.1/entrox-cli-linux-x64.zip"
    sha256 "d9b6dbea89d5475c27f2309750adb079e2eb7b8f5b5c5b7e63b1c1aeb105050c"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
