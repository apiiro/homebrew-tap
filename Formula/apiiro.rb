class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.8.0"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.0/apiiro-macos-arm64"
      sha256 "c58d3def164b646c80b38b0eeeae1ee7375e4e654bf29f7dab0a1ebbf08c569d"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.0/apiiro-macos-x64"
      sha256 "de4e92274b0c2ee358517bcb3fb88f5156bd17316698910a6d18091f91bf2240"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.0/apiiro-linux-x64"
      sha256 "6bf07537655c5c0c43da1b6a99341c12ccbca22d816fbd13c4219fc44cc3e37a"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.8.0/apiiro-linux-arm64"
      sha256 "80aa6f9bd0c7a10d7a0e046eb4f2139900b4f38d9d4d7e6925e23cf3f071b95d"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
