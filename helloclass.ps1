class HelloClass {
    [string] $name
    HelloClass([string] $name) {
        Write-Host $name
        $this.name = $name
    }
    [string] hoge() {
        return "Hello " + $this.name
    }
    [void] test() {
        Write-Host "hoge"
    }
}

# インスタンス化
# $TestObject = New-Object HelloClass
$TestObject = [HelloClass]::new("aa")

# メソッドの実行
Write-Host $TestObject.hoge()
#$TestObject.test()

