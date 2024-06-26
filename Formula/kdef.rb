# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdef < Formula
  desc "Declarative resource management for Kafka"
  homepage "https://github.com/peter-evans/kdef"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.4/kdef_0.5.4_darwin_x86_64.tar.gz"
      sha256 "6e054bd8cb7fab95961346b3609eaca5be6960455f10fba51caff2870f96108b"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.4/kdef_0.5.4_darwin_arm64.tar.gz"
      sha256 "085d6d989d7c167ac6b91b441a6bd0f1aec1b7cd4851008cca1e2715d154147d"

      def install
        bin.install "kdef"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.4/kdef_0.5.4_linux_x86_64.tar.gz"
      sha256 "d940d6e6fe258613b5b959b94006e599c3c36ee4878a19c0f864e9c1ac1f907f"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.4/kdef_0.5.4_linux_arm64.tar.gz"
      sha256 "50bf93395f973e75905530a13ee97717131ca554f3347a02ffdf7e7ce0d3532e"

      def install
        bin.install "kdef"
      end
    end
  end

  test do
    system "#{bin}/kdef --version"
  end
end
