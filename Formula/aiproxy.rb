class Aiproxy < Formula
  desc "Local reverse proxy that blocks leaked secrets and rate-limits LLM API calls"
  homepage "https://github.com/aleksanderbernacki12-byte/aiproxy"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.0/aiproxy-darwin-arm64"
      sha256 "53be2346f760cdce0781f9563f6f48c7a441a9161b6896e6c06a36d01e5c95c9"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.0/aiproxy-darwin-amd64"
      sha256 "e383abe4027691a81e5458586fcb5942cbd17c9d1fd962f798d2cf499eaca828"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.0/aiproxy-linux-arm64"
      sha256 "01594296c4fe56ee16df2e68526dd4e44653f2c49568929d9e54674a1ac7f62e"
    end
    on_intel do
      url "https://github.com/aleksanderbernacki12-byte/aiproxy/releases/download/v0.12.0/aiproxy-linux-amd64"
      sha256 "3fef383b795e2af24ebcc692abb8c4e7b0c5e8cee602fe70f34db2b9cc1c5450"
    end
  end

  def install
    bin.install Dir["aiproxy-*"].first => "aiproxy"
  end

  test do
    assert_match "usage: aiproxy", shell_output("#{bin}/aiproxy help")
  end
end
