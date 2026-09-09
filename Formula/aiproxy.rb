class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.42.0/aiproxy-darwin-arm64"
      sha256 "8c54742aedefce8a91dbda341bd3ebe6cb60535cb6c8a985990394e3c86cd1df"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.42.0/aiproxy-darwin-amd64"
      sha256 "04c2e609cb9b0881c37ef174c55d5a50215f9bb58e368a32c3c3dbebbc1a2a27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.42.0/aiproxy-linux-arm64"
      sha256 "832098f78365e99b6e8ed06cac63876df9aae770190d1195a5d0337ff3bfa87e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.42.0/aiproxy-linux-amd64"
      sha256 "20fa6854042d118d500c97d14e72e3596d560d4502c082c298090ffb33a66000"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
