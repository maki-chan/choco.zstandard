$packageName = 'zstandard'
$packageVersion = '1.5.6'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.5.6/zstd-v1.5.6-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.5.6/zstd-v1.5.6-win64.zip')
$url = $urlArray[0]
$checksum = '4a088296edf5e9a74ad9dd80e463cb7d37eaf4f62012a62804f768333e6c42160c6c6b41624b3d219936cdf3e73fd8a544334858efdba8804fd567ab0d95caab'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '5e3e4893607c7fc5e18f8fe5e6dd392d574d7449ba6ce878bf5547663258e3db3fa20834ac2ac48811ae772b047bb936f7e0f7b71cbd088f54df5bd5f0ee56c9'
$checksumType64 = 'sha512'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
