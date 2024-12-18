# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kdef < Formula
  desc "Declarative resource management for Kafka"
  homepage "https://github.com/peter-evans/kdef"
  version "0.5.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.7/kdef_0.5.7_darwin_x86_64.tar.gz"
      sha256 "10256478be9e82f263851747ed909cf0918e355d821211527ce4f8cf74efa728"

      def install
        bin.install "kdef"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/peter-evans/kdef/releases/download/v0.5.7/kdef_0.5.7_darwin_arm64.tar.gz"
      sha256 "0dffc0f807a9a500a28a530bdf3a933134d0069943ef22292f260fec2f64d11c"

      def install
        bin.install "kdef"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/peter-evans/kdef/releases/download/v0.5.7/kdef_0.5.7_linux_x86_64.tar.gz"
        sha256 "34fc4ad89a518f7f3fff95a32727cc6c7557e66766d99799dc3b29dc0be85b14"

        def install
          bin.install "kdef"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/peter-evans/kdef/releases/download/v0.5.7/kdef_0.5.7_linux_arm64.tar.gz"
        sha256 "175b2a0c9ed4e2c146703395412abea3c6f110dd7da296ccc274b9664ad98966"

        def install
          bin.install "kdef"
        end
      end
    end
  end

  test do
    system "#{bin}/kdef --version"
  end
end
