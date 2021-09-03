$CONFIG_DIRPATH = @(Split-Path $script:MyInvocation.MyCommand.path -parent).Trim()
#$CONFIG_DIRPATH = get-item @(Split-Path $script:MyInvocation.MyCommand.path -parent).Trim()).parent
#Write-Host $CONFIG_DIRPATH

$CONFIG_FILENAME = "hoge.ini"
$CONFIG_PATH = "${CONFIG_DIRPATH}/${CONFIG_FILENAME}"
echo $CONFIG_PATH

$CONFIG = @{}
Get-Content $CONFIG_PATH | %{ $CONFIG += ConvertFrom-StringData $_ }
echo $CONFIG.NAME
echo $CONFIG.AGE

