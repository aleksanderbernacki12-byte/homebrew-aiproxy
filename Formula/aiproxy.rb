class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.19.0/aiproxy-darwin-arm64"
      sha256 "52ca568ffa41e34c1c96f44d3200989e329b6c91dbc911b3dd5d8cffcbadf32e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.19.0/aiproxy-darwin-amd64"
      sha256 "32997307ee9ced15146739e7d3c9f58f2acbcdc8f66fc781c52db9b71d863d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.19.0/aiproxy-linux-arm64"
      sha256 "a0611aaabbbd958ea50c8b3cedf663b69c2338f31852f8ea2e0d48eb237d93b9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.19.0/aiproxy-linux-amd64"
      sha256 "2a2faab4f841d208ed7c156ed56493aa781cfaa182c2ca31559361dc091f2a1b"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
