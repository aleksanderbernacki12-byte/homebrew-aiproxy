class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.18.0/aiproxy-darwin-arm64"
      sha256 "304cc4cbd8a1e5a8efb00916bc496f74adfcce3158bbb65290027f21515f097f"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.18.0/aiproxy-darwin-amd64"
      sha256 "76cb00621d34032ef2a1c678fb47f79810b69d8908880305510abe17cb58f2ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.18.0/aiproxy-linux-arm64"
      sha256 "8530a02a581229f5afde539524141bec0b7ce17ccb92d48677060406b9502f7c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.18.0/aiproxy-linux-amd64"
      sha256 "6ce210fd0c7f18e097108955e63e008a3cd7b88dd96c759d93a63db0610cd2b0"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
