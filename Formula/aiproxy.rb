class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.61.0/aiproxy-darwin-arm64"
      sha256 "483597678b781911b9f29f09d56b0b16279a620f4c75536514fa65d4b5fd00b8"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.61.0/aiproxy-darwin-amd64"
      sha256 "dbf64fb280a07e95e957bee74d8a84a2a95ee88d0593b962a190205115216aa8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.61.0/aiproxy-linux-arm64"
      sha256 "f8e6f58abc37bce8296a5dfb73b21df6f48d26cf89ad556f37863a0af455ec15"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.61.0/aiproxy-linux-amd64"
      sha256 "269c04072a3ef50f5f704af3e0eabaafa5565cff803463d8598338886f38b3cb"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
