class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.62.0/aiproxy-darwin-arm64"
      sha256 "42e53ec477db70ff1f746917792353fb2f20156e96704cf3604ad81081ed90cf"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.62.0/aiproxy-darwin-amd64"
      sha256 "fd2cdeace634aefff396be40e07da20df17beecf32e55191f836f584d118038c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.62.0/aiproxy-linux-arm64"
      sha256 "80b3eab4e50989964b629145dc0937976414e99e33e62b9a96498f09c89ebdbf"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.62.0/aiproxy-linux-amd64"
      sha256 "69c9a2e9e81fc313e0b3870e0a29ace312b4c3290f02e8a3796866be0d711cc7"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
