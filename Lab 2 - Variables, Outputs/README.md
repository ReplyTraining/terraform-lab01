Lab 2 - Variables, Outputs


Step 1
------------------------------------------------------------------------
Change into the Lab-02 directory.
> CD..
> DIR
> CD "Lab 2 - Variables, Outputs"

Step 2
-----------------------------------------------------------------------
Confirm the following exist
> DIR
main.tf
outputs.tf
terraform.tfvars
variables.tf

#note all these can exist in a single .tf file. 
#a single variable, and a single output have been declared already.
#Outputs, can be unique keys, generated names, locations.


Step 3
-----------------------------------------------------------------------
open up the editor 
code main.tf


Step 4 
-----------------------------------------------------------------------
move the variable declaration from main.tf
to variables.tf
copy and paste works just fine.


Step 5
-----------------------------------------------------------------------
> terraform init


Step 6
-----------------------------------------------------------------------
> terraform plan


Step 7
-----------------------------------------------------------------------
Rename your resource group with your own name.
dojodemo-YOURNAME-rg

Note: there are some limitations with Azure resource names. 
avoid special characters, hyphen '-' is generally allowed 


Step 8
-----------------------------------------------------------------------
terraform plan


Step 9
-----------------------------------------------------------------------
terraform apply


Step 10
----------------------------------------------------------------------
Now declare a variable rg-name, for your resource group name.
and change the main.tf to use the variable name.

Note: I dont want you to set a value for rg-name yet.


Step 11
-----------------------------------------------------------------------
> terraform plan
> terraform apply

Confirm console asks for you to enter a value for rg-name. 
this is just to show you a bug that you will encounter with multiple environments later.


Step 12
-----------------------------------------------------------------------
assign your resource group name to the rg-name variable, in to the .tfvars file. 
> code terraform.tfvars        
> terraform plan
> terraform apply


Step 13
-----------------------------------------------------------------------
Check the Azure portal front end that the resource group has been created same as before. 


Step 14
-----------------------------------------------------------------------
> terraform destroy




Specail Tips / Hints, extra Credits, 
-----------------------------------------------------------------------
try the below commands

> AZ interactive  
> terraform fmt
