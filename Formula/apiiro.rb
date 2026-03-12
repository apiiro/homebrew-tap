class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/cli-releases"
  version "1.1.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.4/apiiro-macos-arm64"
      sha256 "5b99aa6e90dfea63b96c571f7908007067dca24d51b6b1e745da2a45fd623eca"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.4/apiiro-macos-x64"
      sha256 "1352a6174ed9ed503730eb6b80a6595e763ab47c04e4bc4547ab67328adbdcb3"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.4/apiiro-linux-x64"
      sha256 "8986662b8055fc2013a956ee6ba88232c15e303a2fcd04ae317b10adb31f9efe"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.4/apiiro-linux-arm64"
      sha256 "f84856f4af0f801a54be2030ba7a423099cc587337b4beafd245b7281ab49b81"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
