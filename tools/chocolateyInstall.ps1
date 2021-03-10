$packageName = 'zstandard'
$packageVersion = '1.4.9'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.4.9/zstd-v1.4.9-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.4.9/zstd-v1.4.9-win64.zip')
$url = $urlArray[0]
$checksum = 'dc34b933f94c6a9ac0a71df033bacd58c6746cd781b84557acc81805e9d667aebe41dd68c11cc6d0a8a2f72b41ee889f33050b03bd5445397fddbe1140c77483'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '4a573f326c0a2bb9b6c8fb748603265569df2e96c2f771c043fb09e33611be6b2041ba362d889756cfeb4ccee994a004502d283848fd61d427e82022492c8e19'
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