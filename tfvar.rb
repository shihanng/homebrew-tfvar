# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfvar < Formula
  desc "Terraform's variable definitions template generator."
  homepage "https://github.com/shihanng/tfvar"
  version "0.9.0"

  on_macos do
    on_intel do
      url "https://github.com/shihanng/tfvar/releases/download/v0.9.0/tfvar_darwin_amd64.tar.gz"
      sha256 "cae6fa7ec2dcc5440ecc45bfd8ce9af93cde1842b21f7f37d086f62d12966ba7"

      def install
        bin.install Dir['tfvar']
      end
    end
    on_arm do
      url "https://github.com/shihanng/tfvar/releases/download/v0.9.0/tfvar_darwin_arm64.tar.gz"
      sha256 "ce0a87b6861ecbb388ae72bfcba9bd14af0a0098ddea8e2a4db5ff5cd1b96082"

      def install
        bin.install Dir['tfvar']
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.9.0/tfvar_linux_amd64.tar.gz"
        sha256 "80319d49b19e19c0a90018a586717ed74da40451a52b84af901a76ced4bd9347"

        def install
          bin.install Dir['tfvar']
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.9.0/tfvar_linux_armv6.tar.gz"
        sha256 "450d31eb5754b0eccb82ffe6218ddc65a1256269753f03c0601833972a67389d"

        def install
          bin.install Dir['tfvar']
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shihanng/tfvar/releases/download/v0.9.0/tfvar_linux_arm64.tar.gz"
        sha256 "08fa55f1c650e6ae6459583aca520078f92df83244bfff9c892b6e40b95a1423"

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
