# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdef < Formula
  desc "Declarative resource management for Kafka"
  homepage "https://github.com/peter-evans/kdef"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.3.0/kdef_0.3.0_darwin_x86_64.tar.gz"
      sha256 "f26483918f805767ad1fabc1ef8c9f93e6d5f2047b500c7b59f8fd68240af9b8"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peter-evans/kdef/releases/download/v0.3.0/kdef_0.3.0_darwin_arm64.tar.gz"
      sha256 "7f44e104021317dd25af149e424554af2c8ab5ec6f21b40f953b8ebcbeb55c50"

      def install
        bin.install "kdef"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peter-evans/kdef/releases/download/v0.3.0/kdef_0.3.0_linux_arm64.tar.gz"
      sha256 "b9d0c914b65680ccceddd2d816f9eabc6697a8fc5b0fbe5d03bb7fa0a1f3f171"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.3.0/kdef_0.3.0_linux_x86_64.tar.gz"
      sha256 "50a0813ac2b697492477c19e238b90d0c8ab3d42149ffaca602260e6c151f5b5"

      def install
        bin.install "kdef"
      end
    end
  end

  test do
    system "#{bin}/kdef --version"
  end
end
