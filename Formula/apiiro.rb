class Apiiro < Formula
  desc "CLI tool for Apiiro security scanning and code risk analysis"
  homepage "https://github.com/apiiro/cli-releases"
  version "1.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-macos-arm64"
      sha256 "aebc3717e96d80f15bc74b71b99e274a6e5a912b068966e06df74dd01827f05b"

      def install
        bin.install "apiiro-macos-arm64" => "apiiro"
      end
    end
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-macos-x64"
      sha256 "e11ada56b9f191973ec407c9d5172d02b94e0946acbf3e52ea3bcd3a547905b7"

      def install
        bin.install "apiiro-macos-x64" => "apiiro"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-linux-x64"
      sha256 "27b096f0c79967efe228b778c51a92869a0ef40da5b7074736ca3d4a56e9477a"

      def install
        bin.install "apiiro-linux-x64" => "apiiro"
      end
    end
    on_arm do
      url "https://github.com/apiiro/cli-releases/releases/download/v1.1.3/apiiro-linux-arm64"
      sha256 "322d5b3d86ca560c2b71b1473f53bb3d611f29536eec905ec1e3f4b09ac9225f"

      def install
        bin.install "apiiro-linux-arm64" => "apiiro"
      end
    end
  end
end
