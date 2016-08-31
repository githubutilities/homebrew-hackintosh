cask :v1 => 'generic-usb-xhci-kext' do
  version 'v1.2.8d9'
  sha256 '2a69da668f1da4bd2f6b15d048d6f4256395f562d9aba0234b917616d155420d'

  url "https://raw.githubusercontent.com/githubutilities/GenericUSBXHCI-pkg/master/pkgs/GenericUSBXHCI_#{version}.pkg.tar.gz"
  name 'GenericUSBXHCI'
  homepage 'http://sourceforge.net/projects/genericusbxhci/'
  license :unknown

  pkg 'GenericUSBXHCI_v1.2.8d9.pkg', :allow_untrusted => true

  uninstall :pkgutil => 'net.osx86.kexts.GenericUSBXHCI'

  caveats <<-EOS.undent
    This kext require you to restart your computer. Or you can try the following command to avoid restart:
      `sudo kextload /System/Library/Extensions/GenericUSBXHCI.kext`
  EOS
end
