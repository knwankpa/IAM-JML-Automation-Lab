# Import HR Data
$users = Import-Csv "../data/mock_hr_users.csv"

# Log File
$logFile = "../logs/jml_log.txt"

foreach ($user in $users) {

    $fullName = "$($user.FirstName) $($user.LastName)"

    Write-Host ""
    Write-Host "Processing $fullName"
    Write-Host "Action: $($user.Action)"

    switch ($user.Action) {

        "Joiner" {

            Write-Host "Creating user account..."
            Write-Host "Assigning RBAC access..."
            Write-Host "Provisioning complete."
        }

        "Mover" {

            Write-Host "Updating access..."
            Write-Host "Changing department permissions..."
        }

        "Leaver" {

            Write-Host "Disabling account..."
            Write-Host "Removing access..."
            Write-Host "Revoking sessions..."
        }
    }

    Write-Host "-----------------------------"
}
