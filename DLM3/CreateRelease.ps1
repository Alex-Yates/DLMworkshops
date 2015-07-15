# Creates a release based on a NuGet package as the source and a database as the target.
# Exports the release to disk and imports reports and script as Octopus Deploy artifacts.

# Requires the following variables to be set in Octopus Deploy:
# DatabaseName
# ServerInstance
# DatabaseUsername
# DatabasePassword
# FullReleasePath

# Makes sure the Release directory we're about to create doesn't already exist.
If (Test-Path $FullReleasePath) {
    rmdir $FullReleasePath -Recurse -Force
}

# Defining the target database
$target = New-DatabaseConnection -ServerInstance $ServerInstance -Database $DatabaseName -Username $DatabaseUsername -Password $DatabasePassword

# Finding the NuGet package
$packagePath = $OctopusParameters["Octopus.Action[Download package].Output.Package.InstallationDirectoryPath"]

# Locate the scripts folder is within the NuGet path
$databaseStatePath = Join-Path -Path $packagePath -ChildPath 'db\state'

# Creates the DatabaseRelease and exports it to a Release directory.
New-DatabaseRelease -Target $target -Source $databaseStatePath | Export-DatabaseRelease -Path $FullReleasePath

# Imports the changes report, deployment warnings, and update script
# as Octopus artifacts, so you can review them in Octopus.
New-OctopusArtifact "$FullReleasePath\Reports\Changes.html"
New-OctopusArtifact "$FullReleasePath\Reports\Warnings.xml"
New-OctopusArtifact "$FullReleasePath\Update.sql"


