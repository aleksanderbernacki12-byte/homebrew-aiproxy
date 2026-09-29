class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.79.0/aiproxy-darwin-arm64"
      sha256 "fd450ac674174090b7cb075350287a817cc12953a0f86c63f37e01ede54bc414"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.79.0/aiproxy-darwin-amd64"
      sha256 "fad54fc1e536328b613c05e7ffdac4ed74aa7262e8d288ff87b513d4e6e1fd73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.79.0/aiproxy-linux-arm64"
      sha256 "c47cb55656085f705116b4b261f184ccb7a55e893c6d1359d2568d3022af4ddf"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.79.0/aiproxy-linux-amd64"
      sha256 "cc8746a9108c8127c7ec717d09b76fd70bb0b56b5a8a581295f68610edf8a298"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
