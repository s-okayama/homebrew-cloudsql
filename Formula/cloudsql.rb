# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloudsql < Formula
  desc "cloudsql"
  homepage "https://github.com/s-okayama/cloudsql"
  version "1.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/s-okayama/cloudsql/releases/download/v1.2.4/cloudsql_1.2.4_Darwin_arm64.tar.gz"
      sha256 "55d1bf0d5f6399d76c55e406ef1a669e7f86c4dedd63ae3574716f104383f572"

      def install
        bin.install "cloudsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/s-okayama/cloudsql/releases/download/v1.2.4/cloudsql_1.2.4_Darwin_x86_64.tar.gz"
      sha256 "7bed83c6763cfc67c9c68db2c461452a75063e2aed715c3a640e917731a80ef9"

      def install
        bin.install "cloudsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/s-okayama/cloudsql/releases/download/v1.2.4/cloudsql_1.2.4_linux_arm64.tar.gz"
      sha256 "bcec87d58ef76c8ec97ba97edc0ae7d13790af4f7aee1888f9c01d29bb07493f"

      def install
        bin.install "cloudsql"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/s-okayama/cloudsql/releases/download/v1.2.4/cloudsql_1.2.4_linux_x86_64.tar.gz"
      sha256 "9115a9f0a7820adbfb2a283fa97c7a85aa8d042ec7d6e7058be7d257fad470ea"

      def install
        bin.install "cloudsql"
      end
    end
  end

  test do
    system "#{bin}/cloudsql --version"
  end
end
