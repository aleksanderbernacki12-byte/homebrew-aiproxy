class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.48.0/aiproxy-darwin-arm64"
      sha256 "b082e2d033c20a9545e4e6d9de5df9218733d9085a4b8a2bb846d0c294e83db5"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.48.0/aiproxy-darwin-amd64"
      sha256 "07f5a64d77f80c0ea590841683afba7a388ff1a4a93874dcddbd0e5da5e35292"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.48.0/aiproxy-linux-arm64"
      sha256 "aed88220ef5a29ba0ee6b1d571f38323c30a7a263f09436e163bd581f0884bef"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.48.0/aiproxy-linux-amd64"
      sha256 "60a1cc1735e034de67a42a303f2c6a56869b217bedda3d0caf84137c69a3d7eb"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
