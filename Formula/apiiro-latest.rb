class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.7"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.7/apiiro-macos-arm64"
      sha256 "116960fafa45d6ec345b2ae5e5882d340398ff65d7d67eb72ea6938794e72ea5"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.7/apiiro-macos-x64"
      sha256 "704b5da93aa728d1390e309c921f06cee26f83df4aedfa2d151b0d04183b8b2f"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.7/apiiro-linux-x64"
      sha256 "c16f0f3c03a57729b924d9e6a1d858437bffad4329238dde1211f4583a68fc86"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.7/apiiro-linux-arm64"
      sha256 "0d29f944891772ad33743b4dc53d38caa25c166bb7f49085f041bbf75d3d2385"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
