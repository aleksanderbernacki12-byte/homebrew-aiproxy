class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.36.0/aiproxy-darwin-arm64"
      sha256 "05ac9776d3880afb7c587fba1f87027d6ca3c0ba70eada16ca31f39268d429ab"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.36.0/aiproxy-darwin-amd64"
      sha256 "f25ffe74b67a9122d883fc43cb97720a9fc6747e1985ca94660914ac02555fa7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.36.0/aiproxy-linux-arm64"
      sha256 "a728c284ad6eb5383d6deab576cdac712e3bb89b254e2c91fef8679cbdb2904a"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.36.0/aiproxy-linux-amd64"
      sha256 "ab8671124ed8f5ce544dffb61582001cda07cefbf826227e1aa52f339cc616ef"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
