# Create the demo org
sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s --wait 30 --userprefix recruitment -o employeeexp.demo

# Push the metadata into the new scratch org.
sfdx force:source:push

# Set the default password.
sfdx shane:user:password:set -g User -l User -p salesforce1

# Set PermSets
#sfdx force:user:permset:assign -n Recruiter

# Open the org.
sfdx force:org:open

# Import the data required by the demo
# sfdx automig:load --inputdir ./data