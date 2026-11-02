$ErrorActionPreference = "Stop"
if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
  Write-Host "Node.js não encontrado. Instale a versão LTS em https://nodejs.org/"
  exit 1
}
npm install
if (-not (Test-Path "android")) { npx cap add android }
npx cap sync android
npx cap open android
