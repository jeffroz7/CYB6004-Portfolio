$number = Read-Host -Prompt "Please enter a number greater than 5"

while ( [int]$number -lt 5 ) 
{

    Write-Output "That number is less than 5, try again!"

    $number = Read-Host -Prompt "Please enter a number greater than 5"

}

Write-Output "Thank you!"