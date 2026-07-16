class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.1.1"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/resin-releases/releases/download/v0.1.1/resin_0.1.1_darwin_arm64.tar.gz"
      sha256 "b7a8d8dcae857edcde246f9ece59db38593a14ee74b0fa5a6a34c4b9ab8c8d7d"
    end

    on_intel do
      url "https://github.com/chickengods/resin-releases/releases/download/v0.1.1/resin_0.1.1_darwin_amd64.tar.gz"
      sha256 "45256ff240220974560a266cba2ac5771591660931f500bc1c9b25329b8049f8"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.1.1"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
