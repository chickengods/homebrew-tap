class Resin < Formula
  desc "the context layer that ends your agent's cold starts"
  homepage "https://resin.fyi"
  url "git@github.com:chickengods/resin.git",
      using:    :git,
      tag:      "v0.1.0",
      revision: "6020eb3ef88a7924443d2df80393807e626b73fd"
  version "0.1.0"

  depends_on "go" => :build

  def install
    cd "resin" do
      system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"resin", "./cmd/resin"
    end
  end

  test do
    # offline-safe: unknown args exit 1 with a recognizable message
    output = shell_output("#{bin}/resin definitely-not-a-command 2>&1", 1)
    assert_match "unknown argument", output
  end
end
