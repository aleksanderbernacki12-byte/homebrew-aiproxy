class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.71.0/aiproxy-darwin-arm64"
      sha256 "6a553132d12b2d9c894fceb26ac112e1c519f9cdffd7c698da77c9c1a63e5745"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.71.0/aiproxy-darwin-amd64"
      sha256 "a499d14f99d07c4f40b403ccb2063b188131919680571cbe329556e981d7a43d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.71.0/aiproxy-linux-arm64"
      sha256 "d6e1ccb57b13d88f576490b563e36904aa1dcc322103dd4e63e394e178263849"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.71.0/aiproxy-linux-amd64"
      sha256 "7773052a1f3f3a2955e17ee110e205645c2bc4fd73cd76446f0c455973c13362"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
