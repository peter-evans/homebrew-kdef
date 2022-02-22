# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdef < Formula
  desc "Declarative resource management for Kafka"
  homepage "https://github.com/peter-evans/kdef"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.2.4/kdef_0.2.4_darwin_x86_64.tar.gz"
      sha256 "12514cd05f2308640e21b29433fec3337170edec3fc2c1baa54661d7e43ccfe8"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peter-evans/kdef/releases/download/v0.2.4/kdef_0.2.4_darwin_arm64.tar.gz"
      sha256 "a9cef0c8db3b5e6219f1ea1aa90d19ce0dbac5c2b8bd8215f86834b24bf8be7e"

      def install
        bin.install "kdef"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.2.4/kdef_0.2.4_linux_x86_64.tar.gz"
      sha256 "b2020dd96d8928dfb12d3a3cc5b4fd946727212476d08a1aae19321263296420"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peter-evans/kdef/releases/download/v0.2.4/kdef_0.2.4_linux_arm64.tar.gz"
      sha256 "2dae3f80505b21020fc31e3f15968b19d9850cb2f8f3f2d4c840e7039217bedc"

      def install
        bin.install "kdef"
      end
    end
  end

  test do
    system "#{bin}/kdef --version"
  end
end
