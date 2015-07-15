# This script refreshes a target DB with the production schema

# Requires the following variables to be set in Octopus Deploy:
# DatabaseName
# ServerInstance
# DatabaseUsername
# DatabasePassword

# Defining the desired pre and post state of the DB as the
# target and production database
$target = New-DatabaseConnection -ServerInstance $ServerInstance -Database $DatabaseName -Username $DatabaseUsername -Password $DatabasePassword
$production = New-DatabaseConnection -ServerInstance .\PROD -Database SimpleTalk_Production -Username $DatabaseUsername -Password $DatabasePassword

# Creating the database release
$release = New-DatabaseRelease -Source $production -Target $target

# Deploying the database release to the target DB whilst
# skipping redundant pre-deploy step to save time
Use-DatabaseRelease $release -DeployTo $target -SkipPreUpdateSchemaCheck