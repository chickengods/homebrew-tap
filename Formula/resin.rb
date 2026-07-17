class Resin < Formula
  desc "Context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  version "0.1.3"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.1.3/resin_0.1.3_darwin_arm64.tar.gz"
      sha256 "0155a15dfae0304663f749eecd691be7469d1a1349c87d343c3580a3ab7521bd"
    end

    on_intel do
      url "https://github.com/chickengods/homebrew-tap/releases/download/v0.1.3/resin_0.1.3_darwin_amd64.tar.gz"
      sha256 "b232838be433efd89f8199935426efb29d6291f5fd9df7388e5df5d8026fa127"
    end
  end

  def install
    bin.install "resin"
  end

  test do
    output = shell_output("#{bin}/resin version --json")
    assert_match '"version":"v0.1.3"', output
    assert_match '"channel":"prod"', output
    assert_match '"distribution":"homebrew"', output
  end
end
