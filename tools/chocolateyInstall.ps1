$packageName = 'zstandard'
$packageVersion = '1.4.9.20210319'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.4.9/zstd-v1.4.9-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.4.9/zstd-v1.4.9-win64.zip')
$url = $urlArray[0]
$checksum = '499edf019e55abe68e558900972012974944018ad39faec826de86e96288b670cf980e7b4eaecb8df9734992d6c074211bfcbf782d9f5d09b4d1bf064489a797'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '65ed3a6427dc267d912e55a0faf18686edff90d6950eb9114002ef090935bb712bf92a6dc3285b06f7d22c33f012b6ea2f2411ff5ebc7ad4dbee4b84db6016bf'
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
