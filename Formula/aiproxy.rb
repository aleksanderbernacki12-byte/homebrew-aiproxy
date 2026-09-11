class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.69.0/aiproxy-darwin-arm64"
      sha256 "e68dd17fa743de41c5336b37e19c60c82b895c59f0ca21193e6005285815c1dd"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.69.0/aiproxy-darwin-amd64"
      sha256 "144b89c547156d1b51978c038a16f6ef82d883324f4c336cf53e793d98ae5517"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.69.0/aiproxy-linux-arm64"
      sha256 "d2c1054b5d3637aa069f4c7e49a1a0e12eed9772f725c698410ac3b504a5f337"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.69.0/aiproxy-linux-amd64"
      sha256 "c72a580d0212310ae386bda5abc74f34d07d83ab16fafb1ae36c110c16266dcb"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
