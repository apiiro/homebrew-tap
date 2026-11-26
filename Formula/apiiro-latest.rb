class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.14.1"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.1/apiiro-macos-arm64"
      sha256 "fbc962e84e23ca55a32d806aa9264aa019e2116abd0df3471acf78f228357cf3"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.1/apiiro-macos-x64"
      sha256 "f80bd4065395ab2e98bdc3344c4a0e8ebb6dda531a65f14a23e1098773a83cd7"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.1/apiiro-linux-x64"
      sha256 "ff4c2cc0c76008c3e51e2e8c8a7c26661078f1ba5204383fe8a77740d83301db"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.14.1/apiiro-linux-arm64"
      sha256 "dbde47d1d96f33e00a99b67f6b94810f385b8d30dfa5afb5bb003ace045218af"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
