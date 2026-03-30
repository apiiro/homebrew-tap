class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/cli-releases"
  version "1.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.5/apiiro-macos-arm64"
      sha256 "02ff02652a2ff65b822c2842dd11e3560f0b866b7837f43800a452de430916f3"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.5/apiiro-macos-x64"
      sha256 "68b4ca012f7cdfb15aa0181038248b6eac7cb3881ca7e37d54436f9f9d70a03b"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.5/apiiro-linux-x64"
      sha256 "c808f955c7bdcbf7e150700fbe39de62d2bd39ba839d1402b351388759815368"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.5/apiiro-linux-arm64"
      sha256 "3cbc0c3a3fd97f370c9f794509ba7d7d047046a249aa72d51f420c4a5fdc1644"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
