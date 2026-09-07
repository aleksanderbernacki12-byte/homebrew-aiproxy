class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.23.0/aiproxy-darwin-arm64"
      sha256 "a8fda11e30f5f5027156e00e5901640977cb48aed4b49cf51c350302a10e6a96"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.23.0/aiproxy-darwin-amd64"
      sha256 "4f98ee3d0a6183b353acc4791314f8cdfbec5462da4bde2ac98a67d36af5a79e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.23.0/aiproxy-linux-arm64"
      sha256 "fa2a15b6016dc8503583b1ad0b3eefa2bb23e4252516f1a6a7e6da4feb72ef0a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.23.0/aiproxy-linux-amd64"
      sha256 "ec909a1e82f85b04ab7e4090b1187d6e1006277425f5396a9da80eba334c14ec"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
