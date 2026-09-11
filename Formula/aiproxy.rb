class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.56.0/aiproxy-darwin-arm64"
      sha256 "8eac80fa2b0a65e5e8c98d6da96d4ef17cac3a77887c95eb1f60765ffef9483a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.56.0/aiproxy-darwin-amd64"
      sha256 "3630cb84ca5d641d84aeceffc2b563bd78a58f134ddfed06b644f0d764fe7e0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.56.0/aiproxy-linux-arm64"
      sha256 "157cc9bc90d426acc37ff8b14d63b3c1f008b746e2a1d50aa25c0d204286568c"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.56.0/aiproxy-linux-amd64"
      sha256 "2bff56e9bed316991df7bfb65bf2bd9a10f5a68129522b64429bcca3edf84bd4"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
