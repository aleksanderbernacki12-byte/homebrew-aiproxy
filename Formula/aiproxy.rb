class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.44.0/aiproxy-darwin-arm64"
      sha256 "262f5f0a9b84f0c14a0f98f182ae4177a9267032a23ba16384268000a860b229"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.44.0/aiproxy-darwin-amd64"
      sha256 "439435b461691c470b4bfa70728f1755baf0f08a9c99f2feff0eb97d7c8adb8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.44.0/aiproxy-linux-arm64"
      sha256 "c94670998132f0393e754a771503a5247c352adb1186c749ffcceaed8e3019b5"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.44.0/aiproxy-linux-amd64"
      sha256 "17b6805bf1183878b5aef3efb042414867099371c2daf6c36b29561e85dc1288"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
