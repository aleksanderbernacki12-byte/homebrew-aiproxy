class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.0/aiproxy-darwin-arm64"
      sha256 "12d91e48d65ed0fef77f5e617dea9fa53f01f7e6b42229c1cf3d20fc15954b0e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.0/aiproxy-darwin-amd64"
      sha256 "649117e24d5f3ae3a8466b33e67ab997c7a9c6d5e237cf213548d74da15e01f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.0/aiproxy-linux-arm64"
      sha256 "dc0ce4263cd0ab746ab52e2affe7d2c8bb228538563a2cc120a19df085f57c9b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.14.0/aiproxy-linux-amd64"
      sha256 "71afa7cd80f2e381010e71038417cd93c40a18721ccfa42c17a8cbb10aa59f54"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
