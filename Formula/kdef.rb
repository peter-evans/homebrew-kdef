# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdef < Formula
  desc "Declarative resource management for Kafka"
  homepage "https://github.com/peter-evans/kdef"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.1/kdef_0.5.1_darwin_x86_64.tar.gz"
      sha256 "85ef91386ba2d71de0e841e3c2a21044b8a1e717d628d7a4bfe1db4eb11f02a2"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.1/kdef_0.5.1_darwin_arm64.tar.gz"
      sha256 "abedc3251cbe61aee66e9cd9694d2c40bc1d8835159a4d2e6029046cb1f9097a"

      def install
        bin.install "kdef"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.1/kdef_0.5.1_linux_arm64.tar.gz"
      sha256 "1860d14e929b7a7272ccd35596f00cb486bb70c3122884495c36fa5015c9dd7b"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.1/kdef_0.5.1_linux_x86_64.tar.gz"
      sha256 "38e50aaf4a9056933a39440bab820b07e61bfbf3f105e425b3b8f5a8ee93ac2e"

      def install
        bin.install "kdef"
      end
    end
  end

  test do
    system "#{bin}/kdef --version"
  end
end
