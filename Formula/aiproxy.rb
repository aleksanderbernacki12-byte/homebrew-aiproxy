class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.1/aiproxy-darwin-arm64"
      sha256 "4a3a84d99762ec378e0db319a39920280126d74640353f20ab87fbd83517c854"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.1/aiproxy-darwin-amd64"
      sha256 "ddcdb425bb699d0d35bbdac26c805f3395089377417afcc7e5080c416e697c8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.1/aiproxy-linux-arm64"
      sha256 "58260143d6993db7d8f385736cde9af3a680772df6d4b6b5105226a66281e9a0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.77.1/aiproxy-linux-amd64"
      sha256 "687c290a4ef9e16aa64a5cf8b5e8068c5ba13e679fae03b989e27ddb1e82440f"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
