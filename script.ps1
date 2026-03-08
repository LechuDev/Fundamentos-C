$content = Get-Content "README.md" -Raw
$lines = $content -split "`n"
$newLines = @()
$inDetails = $false
foreach ($line in $lines) {
    if ($line -match '^### (.+)$') {
        if ($inDetails) {
            $newLines += "</details>"
        }
        $newLines += "<details><summary>$($matches[1])</summary>"
        $inDetails = $true
    } else {
        $newLines += $line
    }
}
if ($inDetails) {
    $newLines += "</details>"
}
$newContent = $newLines -join "`n"
Set-Content "README.md" $newContent