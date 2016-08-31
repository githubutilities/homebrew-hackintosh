cask :v1 => 'hwsensors' do
  version 'v6.16'
  sha256 '3ce6b0aee14c7db2b179ecfe509bb56784db198ede78db32d1ba6373618b9ec9'

  url "https://raw.githubusercontent.com/githubutilities/HWSensors-pkg/#{version}/pkgs/HWSensors-#{version}.pkg.tar.gz"
  name 'hwsensors'
  homepage 'http://hwsensors.com/'
  license :gpl

  pkg 'HWSensors-v6.14.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'org.kozlek.hwsensors'

  caveats do
    reboot
  end
end
