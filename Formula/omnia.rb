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
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.4/omnia_0.1.4_darwin_amd64.tar.gz"
      sha256 "eb5e2964d028b6de303f818d1eee91f611587713cc8f493c15404acda663119d"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.4/omnia_0.1.4_darwin_arm64.tar.gz"
      sha256 "e9b386d9a71d2ca7db2cbb216753b509fda9321b7ff494ab965d145fa1c83032"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.4/omnia_0.1.4_linux_amd64.tar.gz"
      sha256 "7aa38ea37dbeafe53d0fc3b71e4593a9891da0a0edf0db3ac566c23cd0f2759f"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.4/omnia_0.1.4_linux_arm64.tar.gz"
      sha256 "1a28df8e99ef2fb29b32f82fc0be39526dde4b294c2d034e51d66d3f172cfe3a"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
