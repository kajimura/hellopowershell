. ./Log.ps1
class HelloClass {
    [string] $name
    HelloClass([string] $name) {
loglog("hogehogehoge")
[Log]::info("hoge")
        Write-Host $name
        $this.name = $name
    }
    [string] hoge() {
        return "Hello " + $this.name
        # return "Hello " + $name
    }
    [void] test() {
        Write-Host "hoge"
    }
}

# インスタンス化
# $HelloObj = New-Object HelloClass
#$HelloObj = [HelloClass]::new("aa")

# メソッドの実行
#Write-Host $HelloObj.hoge()
#$HelloObj.test()

