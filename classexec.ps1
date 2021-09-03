. ./Log.ps1
. ./IniClass.ps1
. ./HelloClass.ps1
. ./loglog.ps1
# [IniClass]::load()
$config1 = [IniClass]::load()
#Write-Host $config1.number


[Log]::info("hoge")

$helloObj = [HelloClass]::new("taro")
$helloObj.hoge()


