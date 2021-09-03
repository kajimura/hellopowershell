class Log {
    static [void] info($msg) {
        Write-Host ($(Get-Date -Format "yyyy-MM-dd HH:mm:ss ") + $msg)
    }
}

