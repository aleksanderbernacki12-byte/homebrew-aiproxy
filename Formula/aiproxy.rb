class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.13.0/aiproxy-darwin-arm64"
      sha256 "10bad7e52e83c89e74f6f29e1ed47f835c37304e0d5d3f1e4aa72f340f4a07c1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.13.0/aiproxy-darwin-amd64"
      sha256 "eeba29e5b31b6eb99ac384cf83f2d3bdab11baeb6db4b2c90137efda844005fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.13.0/aiproxy-linux-arm64"
      sha256 "d3875d4551f7f64b9b8657ba5c4522528d717e43324132e96b1fed621c71c159"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.13.0/aiproxy-linux-amd64"
      sha256 "fb16707df7d740fd437b164547fb9336d0a9e93ef0a6421f59894a404f6be160"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
