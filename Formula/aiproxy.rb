class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.64.0/aiproxy-darwin-arm64"
      sha256 "19839d4b4fc87617f51a561ce7129facd39cccca45e8c22548f2aae8bb147cd0"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.64.0/aiproxy-darwin-amd64"
      sha256 "ccb127348915b10f1bf3537b0085de4d767875249a675ff27f89e7846830102e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.64.0/aiproxy-linux-arm64"
      sha256 "be94fda0e5ddf58b9bc7c14d13d21888c264e41b5d6f35e8fa10b170756c0ab2"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.64.0/aiproxy-linux-amd64"
      sha256 "d625ebcc60df1a448468b1faf46a34b04c521f1f89f5a53df84597792ec2f8d6"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
