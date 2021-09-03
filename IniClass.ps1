#. ./Log.ps1
# using module ".\Log.psm1"
class IniClass {
    static [hashtable] load() {
 [Log]::info("hoge")

        $CONFIG_DIRPATH = @(Split-Path $script:MyInvocation.MyCommand.path -parent).Trim()
        $CONFIG_FILENAME = "hoge.ini"
        $CONFIG_PATH = "${CONFIG_DIRPATH}/${CONFIG_FILENAME}"
        echo $CONFIG_PATH
        $CONFIG = @{}
        Get-Content $CONFIG_PATH | %{ $CONFIG += ConvertFrom-StringData $_ }
#        echo $CONFIG.NAME
#        echo $CONFIG.AGE
        $CONFIG = @{ Number = 1; Shape = "Square"; Color = "Blue"}
        Write-Host $CONFIG.NAME.Number
        return $CONFIG
    }
}
