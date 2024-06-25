# Path to your user-provided .env file (adjust as needed)
$envFilePath = ".env"

# Check if the .env file exists
if (Test-Path $envFilePath) {
  # Import the variables from the .env file
  Import-CliXml -Path $envFilePath

  # Now you can access your environment variables using $env:VARIABLE_NAME syntax
  Write-Host "Storage Account Name: $($env:STORAGE_ACCOUNT_NAME)"
} else {
  Write-Host "Error: .env file not found at path: $envFilePath"
}