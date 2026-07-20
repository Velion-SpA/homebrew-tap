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
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.3/omnia_0.1.3_darwin_amd64.tar.gz"
      sha256 "dcc5a554cbc5e55d8149ef4f4bf400e4871af15e6201dffdfa2f95d2d78a12ef"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.3/omnia_0.1.3_darwin_arm64.tar.gz"
      sha256 "6ae96ff295b344db435ff2ebeac4d8e754c9ef044d214f6e604305a9fc1ce13d"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.3/omnia_0.1.3_linux_amd64.tar.gz"
      sha256 "abecc5b847a42ca4aa5fcba4db3b7a8ec67d874bbadd9f65a645c054f14e4735"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.3/omnia_0.1.3_linux_arm64.tar.gz"
      sha256 "6e8055f09b6b0c4ee438c7e106a37aa0baf06c59e90094f7d960b307cb5cb56b"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
