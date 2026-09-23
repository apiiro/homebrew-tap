class ApiiroLatest < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis (latest channel)"
  homepage "https://github.com/apiiro/marketplace"
  version "1.7.0"
  license :cannot_represent
  conflicts_with "apiiro", because: "both install the `apiiro` binary"

  on_macos do
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.0/apiiro-macos-arm64"
      sha256 "b2bd247b19d1ca609078042f04941b36a432a9b4a4c8c91e87ce60bdc76c7cb4"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.0/apiiro-macos-x64"
      sha256 "09113b2d79e2906461e6959ca9bb5f55a809cd4b3359591abe3728def0ca6783"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.0/apiiro-linux-x64"
      sha256 "4339242035110c44223646f1f1697f0888a70df93f5ce27d340434ae6f62cae7"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/marketplace/releases/download/v1.7.0/apiiro-linux-arm64"
      sha256 "692ddb98f0c236302df5a936aa58647f486ef1a70203afc73028302e6302981d"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
