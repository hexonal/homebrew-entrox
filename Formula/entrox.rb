# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.38.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.38.1/entrox-cli-macos-arm64.zip"
    sha256 "05742f818e73216649c385a7b67f088de8a9643830e253478966deb94b981559"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.38.1/entrox-cli-linux-x64.zip"
    sha256 "57e7690dc14539b51350341d6c67d7d61869391556217b3dff8b91d45a6f32e3"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
