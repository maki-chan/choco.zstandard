$packageName = 'zstandard'
$packageVersion = '1.4.0'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.4.0/zstd-v1.4.0-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.4.0/zstd-v1.4.0-win64.zip')
$url = $urlArray[0]
$checksum = '123c0b659408065773f350842bf45dca318734eb635d0dc3ccced8005ea50062ef7560095aa7b285362013ea40324242aa0fb3e66c5f6c1e0f83d994015032b4'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '2643192f12ee1f7ed7663b85d74aa12756ad073608caa7f124e245183d46afb12059786a20c52949177c0c706ad8c02cdc0fa67e3f283f0d610faa6990f6b725'
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