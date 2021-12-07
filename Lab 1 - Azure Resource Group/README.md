Lab 1 - Create a resource group


Step 1
------------------------------------------------------------------------
Make sure you are on the right subscription

> az account list -o table
> az account set --subscription ##############################

Note - If this is your first time, you will encounter a window stating no storage account.
-----------------------------------------------------------------------


Step 2
-----------------------------------------------------------------------
git clone https://github.com/ReplyTraining/terraform-lab01.git
-----------------------------------------------------------------------


Step 3
-----------------------------------------------------------------------
Change into the Lab-01 directory.
> DIR
> CD "Lab 1 - Azure Resource Group"


Step 4 
-----------------------------------------------------------------------
Confirm main.tf exists
> DIR


Step 5
-----------------------------------------------------------------------
terraform init


Step 6
-----------------------------------------------------------------------
terraform plan


Step 7
-----------------------------------------------------------------------
Open in editor (2 ways)
code ./main.tf


Step 8
-----------------------------------------------------------------------
Rename your resource group with your own name.
dojodemo-YOURNAME-rg

Note: there are some limitations with Azure resource names. 
avoid special characters, hyphen '-' is generally allowed 


Step 9
-----------------------------------------------------------------------
Change location to somewhere more appropriate.
google is your friend. Pick a region that contains germany. :)


Step 10
----------------------------------------------------------------------
Run the plan again.
> terraform plan


Step 11
-----------------------------------------------------------------------
Confirm the output states it will create a single resourcegroup with your name.
and in the location - 'westeurope'


Step 12
-----------------------------------------------------------------------
> terraform apply


Step 13
-----------------------------------------------------------------------
Explore Azure, confirm your new resource group with your name has been created.


Step 14
-----------------------------------------------------------------------
> terraform destroy




Specail Tips / Hints, extra Credits, 
-----------------------------------------------------------------------
try the below commands

> AZ interactive  
> terraform fmt
