# Use SQL Release to deploy the database release.

# Requires the following variables to be set in Octopus Deploy:
# DatabaseName
# ServerInstance
# DatabaseUsername
# DatabasePassword
# FullReleasePath

# Defining the target database.
$target = New-DatabaseConnection -ServerInstance $ServerInstance -Database $DatabaseName -Username $DatabaseUsername -Password $DatabasePassword

# Importing and deploying release
Import-DatabaseRelease $FullReleasePath | Use-DatabaseRelease -DeployTo $target