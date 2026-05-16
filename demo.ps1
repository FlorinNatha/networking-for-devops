# This is a simple demo script to test the curl command
# It uses Windows curl.exe (which acts like Linux curl)

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "🌐 Networking Demo: API Request" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Fetching a single post from JSONPlaceholder using curl..." -ForegroundColor Yellow
Write-Host "Command: curl.exe -s https://jsonplaceholder.typicode.com/posts/1" -ForegroundColor DarkGray
$response = curl.exe -s https://jsonplaceholder.typicode.com/posts/1
Write-Host "Response:" -ForegroundColor Green
Write-Host $response
Write-Host ""

Write-Host "2. Showing the request flow (DNS, Handshake, Headers) using verbose flag..." -ForegroundColor Yellow
Write-Host "Command: curl.exe -v -s -o NUL https://jsonplaceholder.typicode.com/posts/1" -ForegroundColor DarkGray
Write-Host "Note: Output will show the connection process." -ForegroundColor DarkGray
curl.exe -v -s -o NUL https://jsonplaceholder.typicode.com/posts/1

Write-Host ""
Write-Host "Demo complete! Check README.md for explanations of these steps." -ForegroundColor Cyan
