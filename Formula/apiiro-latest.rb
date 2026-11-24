class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.13.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.13.0/apiiro-macos-arm64"
      sha256 "82f6524b8c3416a4bacdbc81f1ce34c36b850c4f9dfc19fbc3cbb9bd209c00dd"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.13.0/apiiro-macos-x64"
      sha256 "240989e8cade1a87c29017f3c3ea1929ba6a812cd15a967a9c81fbe1a9791a04"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.13.0/apiiro-linux-x64"
      sha256 "7aab5da01a51cde73bb39501800cba99fe8d2cfc5c51458946eb6a99c870eb56"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.13.0/apiiro-linux-arm64"
      sha256 "934eebb51bd5ea9cbbf7049e04b3e42263598fb4808047cb99ac8e46ee15c088"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
