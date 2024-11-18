# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfvar < Formula
  desc "Terraform's variable definitions template generator."
  homepage "https://github.com/shihanng/tfvar"
  version "0.10.0"

  on_macos do
    on_intel do
      url "https://github.com/shihanng/tfvar/releases/download/v0.10.0/tfvar_darwin_amd64.tar.gz"
      sha256 "b3652b729b01cd7c5038896c9eea8c08dd88383e43d2f3e140613df2e75cc83e"

      def install
        bin.install Dir['tfvar']
      end
    end
    on_arm do
      url "https://github.com/shihanng/tfvar/releases/download/v0.10.0/tfvar_darwin_arm64.tar.gz"
      sha256 "117dcf88d8ccc2650390b7f4ed3779d9cfb9e5393905078f6292b22b29ac2c88"

      def install
        bin.install Dir['tfvar']
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.10.0/tfvar_linux_amd64.tar.gz"
        sha256 "eb712072212496b093e3d15b69fc97de0c27ade386da178e4916cf48cfc051d2"

        def install
          bin.install Dir['tfvar']
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.10.0/tfvar_linux_armv6.tar.gz"
        sha256 "be4d6c77ace1f6fd0a52ecc1c8f6f595715074bee54c054e4b2d942de23b56b7"

        def install
          bin.install Dir['tfvar']
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.10.0/tfvar_linux_arm64.tar.gz"
        sha256 "d7f3ea41355e6ee28b897a175b9399593992d3b2f1d92cc06c6d5aa3ae567606"

        def install
          bin.install Dir['tfvar']
        end
      end
    end
  end

  test do
    system "#{bin}/tfvar"
  end
end
