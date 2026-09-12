class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.75.0/aiproxy-darwin-arm64"
      sha256 "db5684f56522f2137ac48941ba36d2aa799b1cd24f26f225a352d5ccb5cfea92"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.75.0/aiproxy-darwin-amd64"
      sha256 "83f836f0c01b86f1aa40cb69e728f6521527e2ef480e31a169967e0b701ce182"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.75.0/aiproxy-linux-arm64"
      sha256 "444052c2800dfc720ba27c419e2711b1fd7239321a57905860d146b661b75c76"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.75.0/aiproxy-linux-amd64"
      sha256 "33587ea0bf6caeaf9fea6eb64451860b62da20faa6a5241bf8f1cef864bdd84c"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
