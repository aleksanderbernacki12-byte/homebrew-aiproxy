class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.52.0/aiproxy-darwin-arm64"
      sha256 "74d0a628eaa2ec847ff4f9411ffc7964e20dbd1dfbf3d9ef0a0713ef692dc7a5"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.52.0/aiproxy-darwin-amd64"
      sha256 "297db05e7ff07d46b94ecacc854d647548c6983c5fc0ee23b5e1a88811f803c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.52.0/aiproxy-linux-arm64"
      sha256 "25df350f3a6d90448fd089398531f619139d5069be4a4669c983e060a984a5b9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.52.0/aiproxy-linux-amd64"
      sha256 "560c4743dd9a83a1b6e4bf466b068f42cc72f94cd1298e2e18d2aa39bf391fa5"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
