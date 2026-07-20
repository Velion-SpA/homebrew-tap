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
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.2/omnia_0.1.2_darwin_amd64.tar.gz"
      sha256 "4af9f7acaf9c2abc47aacece3f3c21aa5398e04a4e348d5b910e1e0db28646a6"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.2/omnia_0.1.2_darwin_arm64.tar.gz"
      sha256 "1e4d8e1771ed34b9c360ab2c9d1e675474e21f2cacbe6dc1bb5ad98e2217704c"

      def install
        bin.install "omnia"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.2/omnia_0.1.2_linux_amd64.tar.gz"
      sha256 "4b2b84dfb8a7802fab94751a4f8359e2ef69a0202345b7050008b60dbe09d9b9"

      def install
        bin.install "omnia"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Velion-SpA/omnia/releases/download/v0.1.2/omnia_0.1.2_linux_arm64.tar.gz"
      sha256 "f96934b51e6341e2186e9c1ce4a587f960afc8a5ffa5a9bfa12eca7fe8a5bdc2"

      def install
        bin.install "omnia"
      end
    end
  end

  test do
    system "#{bin}/omnia", "version"
  end
end
