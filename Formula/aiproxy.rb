class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.38.0/aiproxy-darwin-arm64"
      sha256 "c89a2745574f43e69bd6d01b0aa055eab9b458580e0ad252e87eda12ccd51cfb"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.38.0/aiproxy-darwin-amd64"
      sha256 "49291aafb90a992b484616f50bb2e089a3e4f6899fafecf5d8dc6901ad8c1e47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.38.0/aiproxy-linux-arm64"
      sha256 "7afabc700526f2688e6711348a4567e44d8bd59e3357f36484af856939b21f26"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.38.0/aiproxy-linux-amd64"
      sha256 "7da1e38b2f96318b644db071af910650cac27f890f84ea40d2940935e2b04d8e"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
