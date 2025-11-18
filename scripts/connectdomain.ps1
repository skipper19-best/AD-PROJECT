# Присоединение Windows 10 к домену
Add-Computer -DomainName "company.local" -Credential "COMPANY\Administrator" -Restart

# Проверка доменного членства
systeminfo | findstr "Domain"
whoami
