class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.28.0/aiproxy-darwin-arm64"
      sha256 "4e82037cfedf44a0457f1fba5a064bd876c92dbdc34d83d21d52b905caeb1317"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.28.0/aiproxy-darwin-amd64"
      sha256 "c4daca7364e2fc5613469efa3ae775adc5ffa3e8da48f670b68e60a9c0d9ffd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.28.0/aiproxy-linux-arm64"
      sha256 "f11ea819fc2c4b96ca4528aa8114bdca2fa47e2b2cf38f9da5a7f9005f8a768b"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.28.0/aiproxy-linux-amd64"
      sha256 "484b1a99024ed41bd3cc19574dfbe9f301cc508d576c06d5d4b77095a0d95df2"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
