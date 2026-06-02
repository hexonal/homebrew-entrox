# typed: false
# frozen_string_literal: true

class Entrox < Formula
  desc "Entrox CLI"
  homepage "https://entrox.996icu.wiki"
  version "0.0.0-ci.32.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.32.1/entrox-cli-macos-arm64.zip"
    sha256 "30bf3f4d9149efacd0d7e8e11f8dd5ba3778909761d2fe57ca1d9e14b80c5b4a"
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://entrox-download.996icu.wiki/entrox-dev/0.0.0-ci.32.1/entrox-cli-linux-x64.zip"
    sha256 "766238ee7dd1552519e28ddb0cdb4dcf7b05ca915c1939ab16b4f6e56819e1ce"
  end

  depends_on "ripgrep"

  def install
    bin.install "bin/entrox"
  end

  test do
    system "#{bin}/entrox", "--version"
  end
end
