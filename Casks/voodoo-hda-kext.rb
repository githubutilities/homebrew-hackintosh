cask :v1 => 'voodoo-hda-kext' do
  version 'v286'
  sha256 '794471bb382f3c255b3e6fa262a4267c2c6f9ca279da73f4d66db6e0a7343a50'

  url "https://raw.githubusercontent.com/githubutilities/VoodooHDA-repacked-pkg/master/pkgs/VoodooHDA_#{version}_repacked.pkg.tar.gz"
  name 'VoodooHDA'
  homepage 'http://sourceforge.net/projects/voodoohda'
  license :unknown

  pkg 'VoodooHDA_v286_repacked.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'com.Hackintosh.voodooloader'

  caveats <<-EOS.undent
    This kext require you to restart your computer. Or you can try the following command to avoid restart:
      `sudo kextload /System/Library/Extensions/VoodooHDA.kext`
  EOS
end
