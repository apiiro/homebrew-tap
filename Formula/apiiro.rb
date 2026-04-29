class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/marketplace"
  version "1.4.0"
  license :cannot_represent
  conflicts_with "apiiro-latest", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.0/apiiro-macos-arm64"
      sha256 "80e83716025bb22b41ee5edd57e8d5bb850b8d9b911a45d7266c3cd5e5dec8b0"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.0/apiiro-macos-x64"
      sha256 "a1eaa67928d7376f4faa8f5f0baf8553f374dcabef6fc4ef22dea01ecf87d2a4"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.0/apiiro-linux-x64"
      sha256 "a06a07e90613cec0cf5279ad70db4b508f3d5a420efe5ccc21dd425728bf3d7d"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.4.0/apiiro-linux-arm64"
      sha256 "d15277e74c36f84494bd69f252d0a344c97ac6817e997079dc273bba86709968"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
