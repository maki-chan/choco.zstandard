$packageName = 'zstandard'
$packageVersion = '1.4.5'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.4.5/zstd-v1.4.5-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.4.5/zstd-v1.4.5-win64.zip')
$url = $urlArray[0]
$checksum = '5c90dfda196e2fc5a130fb72d5a2586f50a3d48e57d15c7e3b07220a49c7c6320af1801782ea2be358c0a4911ee8e90e6ec6cd034b2a4631d3c8b058694bd563'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '371623c5bbc07e8dfe8ffecb5fc056aba92e3dc74f2a7f82a9d438a5a14e3118080b27c030aea4c5da88822f9d8f007b6dc4706e0936916c96927e6dfa2c8787'
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