# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.19.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-macos-arm64.zip"
    sha256 "dcbdc5ddafd127b547f3d4e63af00dcaa5176da5e6d9f5f40c56f7b93fcab750"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/hexonal/entrox/releases/download/entrox-dev/entrox-cli-linux-x64.zip"
    sha256 "040906037e6d8698e63ed007224e6ad19c3b5eecdc941860c2066069c871909b"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
