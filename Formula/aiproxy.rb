class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.1/aiproxy-darwin-arm64"
      sha256 "341e0b97cf92de14e16291571f6e0672a1a96ad6740b9d2dae8dbd46544a0ea1"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.1/aiproxy-darwin-amd64"
      sha256 "2201cf12b48a3895925b4f313604d7bbb72a21d8278007e0d2d664fc8f044c25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.1/aiproxy-linux-arm64"
      sha256 "8571d97ce718c20d663f38e99ebb00f7b2139f703b660ec0a34da8f1b5be5678"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.59.1/aiproxy-linux-amd64"
      sha256 "7ff8204a9d8e5d6ef8cef6b7952ff33743c7b76450b03af613b6d544c4260b2a"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
