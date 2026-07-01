# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.57.2"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.57.2/entrox-cli-macos-arm64.zip"
    sha256 "aad04e08829bc31d05bc7626329e5089cf4eb822e5db5697f210e94ea233b401"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.57.2/entrox-cli-linux-x64.zip"
    sha256 "0af74d9fc1931d35a8fcc8c0a77763e9d6ba516b6f3cef95d897a206ebe6e6d8"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
