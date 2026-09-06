class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.1/aiproxy-darwin-arm64"
      sha256 "6d5cd816ef809ff9865df9abd991a9407b2f2b0185d794536d2c4fa247dd6399"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.1/aiproxy-darwin-amd64"
      sha256 "623b82442e046d9f45861cfca82c3835989534aedf121047ec99b3cce3c3ce6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.1/aiproxy-linux-arm64"
      sha256 "3311299368af4c748a5faf7e2ebac6cef548d13132e15a4b6ce4f057816fd1c9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.1/aiproxy-linux-amd64"
      sha256 "e2f054aa481dcde222871c400707e424f70f7a00e74483988b92e9b9d6bb1c0a"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
