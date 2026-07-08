# typed: false
# frozen_string_literal: true

# TODO: this is a hand-written placeholder for the first release (v0.1.0).
# Once v0.1.0 is tagged and .github/workflows/release.yml runs `goreleaser
# release`, GoReleaser overwrites this file automatically (it manages this
# formula from that point on — do not hand-edit after the first release).
class Omnia < Formula
  desc "Persistent memory for AI coding agents — local-first with self-hosted multi-tenant cloud sync"
  homepage "https://github.com/Velion-SpA/omnia"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_darwin_amd64.tar.gz"
      sha256 "2eb07af84b8aa3c9d0483957b3c6f91ab589e982b0cbfa437b4534be6c32985a"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_darwin_arm64.tar.gz"
      sha256 "e9321656a345227dd0dce507ee17e3ae4b28d30ef89295404f53bf7b52a8308c"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_linux_amd64.tar.gz"
      sha256 "8233e81a234a2a3041266d75b9a69c2bd1502e4feaefd89ee27fa383c1c291e9"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_linux_arm64.tar.gz"
      sha256 "5608e837e9f9c4a8c10acb0204557129bef989d3a5ddd61b6c406ae1cac81327"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
