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
      sha256 "TODO_REPLACE_WITH_REAL_SHA256_DARWIN_AMD64"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_darwin_arm64.tar.gz"
      sha256 "TODO_REPLACE_WITH_REAL_SHA256_DARWIN_ARM64"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_linux_amd64.tar.gz"
      sha256 "TODO_REPLACE_WITH_REAL_SHA256_LINUX_AMD64"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.0/omnia_0.1.0_linux_arm64.tar.gz"
      sha256 "TODO_REPLACE_WITH_REAL_SHA256_LINUX_ARM64"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
