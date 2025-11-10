


Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

Install-ADDSForest -DomainName "company.local" -DomainNetbiosName "COMPANY" -InstallDns:$true -Force


New-ADUser -Name "Ivan Ivanov" -SamAccountName "i.ivanov" -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Andrey Sidorov" -SamAccountName "a.sidorov" -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -Enabled $true  
New-ADUser -Name "Blanka Ivanovna" -SamAccountName "b.ivanovna" -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) -Enabled $true
