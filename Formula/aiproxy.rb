class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.35.0/aiproxy-darwin-arm64"
      sha256 "7da58b6847f3b64422a8a4198d0a09098da73af0b6879d84951c7edf57cdafdc"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.35.0/aiproxy-darwin-amd64"
      sha256 "ee9055cfff31a907406eec7782fdbc5c8437f5b8671abccfb62d387857793e3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.35.0/aiproxy-linux-arm64"
      sha256 "ac128015018924626e20b65a661162d8ced412aedcc95919b870d30baffea900"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.35.0/aiproxy-linux-amd64"
      sha256 "7a7e7ef667f3fc7fb89b11c459cea186589b1a7025b16da73039b8bb7bde69d1"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
