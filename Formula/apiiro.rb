class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/cli-releases"
  version "1.1.3"
  license :cannot_represent

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-cli-macos-arm64"
      sha256 "9a3801d1542f0d7da7b5247a3a7237d8fb45191483840dcc537f84bf0dc0e94a"

      def install
        bin.install "apiiro-cli-macos-arm64" => "apiiro"
      end
    elsif Hardware::CPU.intel?
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-cli-macos-x64"
      sha256 "fdb1da642be53829b0d7e773571558339e4962ab5049e197d3bea6d6b6d9b1bb"

      def install
        bin.install "apiiro-cli-macos-x64" => "apiiro"
      end
    end

  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-cli-linux-x64"
      sha256 "620d97359410f696fe7456f7d25eeaf3baffb57683643313843b5b09213d4f83"

      def install
        bin.install "apiiro-cli-linux-x64" => "apiiro"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-cli-linux-arm64"
      sha256 "cc6a2f2e34cf0482947e3d0ccaf468e69bcc2725e67715d5221bda0b599c6b4f"

      def install
        bin.install "apiiro-cli-linux-arm64" => "apiiro"
      end
    end
  end

end
