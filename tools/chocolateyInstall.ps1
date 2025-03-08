$packageName = 'zstandard'
$packageVersion = '1.5.7'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-v1.5.7-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-v1.5.7-win64.zip')
$url = $urlArray[0]
$checksum = 'c719d64a566128583ad20268be36d0d6b8345f9faebc0f2180ada232035ffabe549f264bcefd17e4cc3a60fd8bb36826323add3ef58c80a0589a35e53fd128db'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = 'a96dc5417943c03fa231bf2d6a586b7ae7254fa52fdc15d302f296b5ff88e1ff0f07120a720149eb82ea0f0c65444393ebf05d2ee1bd1db341b803ff65a2e675'
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
