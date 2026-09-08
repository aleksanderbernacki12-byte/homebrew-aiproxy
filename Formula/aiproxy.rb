class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.34.0/aiproxy-darwin-arm64"
      sha256 "e863c36eeb7f3a203ec6ec9f02847868562b5af9e0be02b72481509927545a91"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.34.0/aiproxy-darwin-amd64"
      sha256 "566ea5717fa6e7c6f461e4839161eb05345099b5f99416b06bb207997a55e47d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.34.0/aiproxy-linux-arm64"
      sha256 "16da1b773829e0b83ab64ec62e4cb1fa8bb212ffb106582686718f4bf903beda"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.34.0/aiproxy-linux-amd64"
      sha256 "748dac6a52747fa362c0a7a5e21bc88c10b26b008cb2bfdd977bc15aa2292e17"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
