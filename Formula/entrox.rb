# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.26.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-macos-arm64.zip"
    sha256 "9a05d1cbc126d96ccab3231310b7e7b0a6ab9c98c3554c689998840f117860b9"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-linux-x64.zip"
    sha256 "b2b6728b57fbc6907377a41828108e443947068d5e88888bca887b4fc2727b1c"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
