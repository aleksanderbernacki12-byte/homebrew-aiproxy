class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.29.0/aiproxy-darwin-arm64"
      sha256 "5eae3561e972e0d7bc7507a1d7b6372e5cabfaa050f8d76099a6f4cd34703ce5"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.29.0/aiproxy-darwin-amd64"
      sha256 "9ecce491a8f2d59528e8a01e7f499defbee0ce98e4ddd9da2254cd6ecfa46724"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.29.0/aiproxy-linux-arm64"
      sha256 "95cc3b8926f2c056dab0af19df307a51576df7287ab3d49f4acf529ce528e6e8"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.29.0/aiproxy-linux-amd64"
      sha256 "78e1c297355a16a68b24f9cfb2f35b508a7ed39bf333911dc5242de578a32b9e"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
