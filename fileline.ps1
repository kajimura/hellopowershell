$num = Select-String siro ./user.txt | ForEach-Object { $($_ -split":")[1]}
if ($num) {
$lines = Get-Content ./user.txt
$lines[$num - 1] = "nanaro"
$lines | Out-File ./user.txt
}
