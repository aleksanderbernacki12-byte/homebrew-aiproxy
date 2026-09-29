class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.2/aiproxy-darwin-arm64"
      sha256 "31efdb6d43abe3023903fda8b58258036bc56f0f83d3139cffea78e46d5fbbc9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.2/aiproxy-darwin-amd64"
      sha256 "5116148b1edc0bc2d6bf0cfcbe2733350259b8ef9b57ba34124bd3be00f89efa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.2/aiproxy-linux-arm64"
      sha256 "30a3298625ce6aa626dd0d31a121758c2d50a5119ad6aa7406c0f06a15cca1bc"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.78.2/aiproxy-linux-amd64"
      sha256 "c7f19512c81c25f24b1118ce8cbbc72cef2888e160aee6d2ee98dd84905510e8"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
