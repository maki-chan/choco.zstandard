$packageName = 'zstandard'
$packageVersion = '1.5.0'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.5.0/zstd-v1.5.0-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.5.0/zstd-v1.5.0-win64.zip')
$url = $urlArray[0]
$checksum = 'd406d1e404a4c09d16df234953eaa706928946dd160eead7cdf5cbe75b3f72344635c7ca71ff23a10a5375b2d2805d4967f71747b8f07b1347a9fa09298646a0'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = 'fcd4e974a6701a395b6c8bb7f0625253047b18d88f22fbb1fe97128dfc3f327850bc56f12560bea591efeca904b54a1dc536a8e9a7b76d8b45795d3a191454b6'
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
