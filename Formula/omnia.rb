# typed: false
# frozen_string_literal: true

# Hand-maintained formula. GoReleaser (release.yml + .goreleaser.yaml) builds and
# publishes the release tarballs but skips the tap push (skip_upload) until a
# HOMEBREW_TAP_TOKEN secret with write access to this repo is configured. When
# cutting a new version, bump `version`, the URLs, and the sha256s below from the
# release's checksums.txt.
class Omnia < Formula
  desc "Persistent memory for AI coding agents — local-first with self-hosted multi-tenant cloud sync"
  homepage "https://github.com/Velion-SpA/omnia"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.5/omnia_0.1.5_darwin_amd64.tar.gz"
      sha256 "6cf118a5e251e5f43cedff1541c4bc2974c0ff47ba2ca4968cd68c85f479e1b1"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.5/omnia_0.1.5_darwin_arm64.tar.gz"
      sha256 "463709c0c83de24cc299255923312c7b29a003b81c19938e368efbfbb08982b8"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.5/omnia_0.1.5_linux_amd64.tar.gz"
      sha256 "4ea941155da3f8c5fc03376f28880aaa88f5eb2152eb7b0e3bdbee282fd3a0b9"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.5/omnia_0.1.5_linux_arm64.tar.gz"
      sha256 "2d5f650fe3b2ed3862b0707b6ab5543771b6c61b51c3131c8950bffc076fed21"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
