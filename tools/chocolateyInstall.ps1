$packageName = 'zstandard'
$packageVersion = '1.5.5'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-v1.5.5-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-v1.5.5-win64.zip')
$url = $urlArray[0]
$checksum = '6bf70c7a07b70f99fd0734e0513be7271c3fcb9d69441e798aca3064367355172f5e72ff27f36412647dce2b0b8c0a0658eb1be96b559c737c04917bfcb06c10'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '8d0f5fb98e98cb15b7f8a6af265093d94524798a93ef12bd4528e25fd6234ee14d6a84545273ce9d02748b4aa87052f630ba168c870f3f7975bbe409cb60496c'
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
