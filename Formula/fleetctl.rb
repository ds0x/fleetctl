class Fleetctl < Formula
  desc "CLI tool for Fleet device management (https://fleetdm.com)"
  homepage "https://fleetdm.com"
  version "4.81.1"
  license "MIT"

  on_macos do
    url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_macos.tar.gz"
    sha256 "f9e48f32708ab5d91e136b7a1f951cd97075221c0a168165f6e9acb8bb8b56a8"
  end

  on_linux do
    on_intel do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_amd64.tar.gz"
      sha256 "bb988a67614d8d2c7d39b44a52603f485b4bb457adc48e650889a3fc49930567"
    end

    on_arm do
      url "https://github.com/fleetdm/fleet/releases/download/fleet-v#{version}/fleetctl_v#{version}_linux_arm64.tar.gz"
      sha256 "40114d99dd63f8ebb3942c879d74c64e31bba230b7b14290f94c7d11cd8fdf5d"
    end
  end

  def install
    bin.install "fleetctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fleetctl --version")
  end
end
