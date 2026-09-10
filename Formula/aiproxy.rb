class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.47.0/aiproxy-darwin-arm64"
      sha256 "1a52b60c6aa827885388a997bda146cde1f3899a02018a92cb821b3683615453"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.47.0/aiproxy-darwin-amd64"
      sha256 "b0f0dac48d4b982b5679826524a0f07e5166e8d727feb2ae69ec06a6767f767d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.47.0/aiproxy-linux-arm64"
      sha256 "681e27f99fd0f61bf8cce5c83e78f4b12ca07eecb18fef582e6978c373a0c75d"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.47.0/aiproxy-linux-amd64"
      sha256 "287d7ad7e967aa23e0f50b91190000e335769f6df0d23581ba89194a9eed140c"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
