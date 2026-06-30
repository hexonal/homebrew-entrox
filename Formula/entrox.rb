# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.53.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.53.1/entrox-cli-macos-arm64.zip"
    sha256 "85a2462553c4ab2f1e982096463c56e9f12a6f84d1edac7dffb6f5dbb5d27140"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.53.1/entrox-cli-linux-x64.zip"
    sha256 "8a4c470c0d240f2676bbd9ce25e759967cb66642853d39d29a06bdb823046c8c"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
