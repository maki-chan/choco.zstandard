$packageName = 'zstandard'
$packageVersion = '1.5.7'
$urlArray = @('https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-v1.5.7-win32.zip', 'https://github.com/facebook/zstd/releases/download/v1.5.7/zstd-v1.5.7-win64.zip')
$url = $urlArray[0]
$checksum = '53587af5d5960cd01cbff537f9eb720a3c82a504da144dc919ddf0ff7d20946bdba1050a2fe8ee9db876a294a98576aeaa78fe6796e94152d7c9be492d9d7156'
$checksumType = 'sha512'
$url64 = $urlArray[1]
$checksum64 = '78c5818c5a9bc314768ade47a74c8c8afa1e4be443dd8767472a1f511d0534e699c289d007c7ebeb50b99706c0a013f81be9e11c6f78c334b983f1aec976408b'
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
