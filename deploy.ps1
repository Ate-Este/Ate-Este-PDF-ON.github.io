# One-click deploy for PDF-ON (Windows)
# Requires: Node.js installed and one-time login to the chosen provider.

param([ValidateSet("netlify","vercel","github")][string]$Provider = "netlify")

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

switch ($Provider) {
  "netlify" {
    if (-not (Get-Command netlify -ErrorAction SilentlyContinue)) {
      npm install -g netlify-cli
    }
    netlify deploy --prod --dir .
  }
  "vercel" {
    if (-not (Get-Command vercel -ErrorAction SilentlyContinue)) {
      npm install -g vercel
    }
    vercel --prod
  }
  "github" {
    Write-Host "Push this folder to a GitHub repo, then enable Pages in Settings -> Pages -> GitHub Actions."
    Write-Host "The workflow .github/workflows/deploy.yml will publish automatically on push."
  }
}
