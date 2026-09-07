class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.27.0/aiproxy-darwin-arm64"
      sha256 "7c7d8a9b83ba0726f7c698cb77c8cc479d1e54a4293710a037791172988a00ea"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.27.0/aiproxy-darwin-amd64"
      sha256 "5ac5120c925169619cb95d66236239afe420c9aaa1ab3367338f5ccaa62f7d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.27.0/aiproxy-linux-arm64"
      sha256 "026ebf9fbb7879f17ea14ae358141a087a0fd10c45582f0dc959ba9ef7ce0db4"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.27.0/aiproxy-linux-amd64"
      sha256 "e613054ab6354b7a65898248763886e9900747928ffa2c1ec705e9ef05cbc041"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
