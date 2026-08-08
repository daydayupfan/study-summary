$targetDir = "e:\code\study-summary\AI 学习"
if (-not (Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force }

$repos = @(
    @{Url="https://github.com/anthropics/skills.git"; Folder="anthropics-skills"},
    @{Url="https://github.com/boshi-xixixi/TraeSkill.git"; Folder="TraeSkill"},
    @{Url="https://github.com/HighMark-31/TRAE-Skills.git"; Folder="HighMark-TRAE-Skills"},
    @{Url="https://github.com/yihui504/TRAE-skills-from-CC-plugins.git"; Folder="TRAE-skills-from-CC-plugins"},
    @{Url="https://github.com/AlperGuven/TRAE-Skills.git"; Folder="AlperGuven-TRAE-Skills"},
    @{Url="https://github.com/obra/superpowers.git"; Folder="superpowers"},
    @{Url="https://github.com/abubakarsiddik31/claude-skills-collection.git"; Folder="claude-skills-collection"},
    @{Url="https://github.com/travisvn/awesome-claude-skills.git"; Folder="awesome-claude-skills"},
    @{Url="https://github.com/hmzainjamil/awesome-claude-code.git"; Folder="awesome-claude-code"}
)

foreach ($repo in $repos) {
    $fullPath = Join-Path $targetDir $repo.Folder
    if (Test-Path $fullPath) {
        Write-Host "SKIP: $($repo.Folder) - directory already exists"
    } else {
        Write-Host "CLONING: $($repo.Url) -> $($repo.Folder)"
        git clone $repo.Url $fullPath
        if ($LASTEXITCODE -eq 0) {
            Write-Host "SUCCESS: $($repo.Folder)"
        } else {
            Write-Host "FAILED: $($repo.Folder)"
        }
    }
}
Write-Host "ALL DONE"