# Get the user logged into server
$ServerName = "FL-JAX-RIDB-P1"
quser /server:$ServerName

# quser is not a PowerShell command that would return a structured object so 
# we'll have to parse this string to pull out the SessionId value
$UserName = 'ameskic'
$SessionId = ((quser /server:$ServerName | Where-Object { $_ -match $userName }) -split ' +')[2]
$SessionId

# Now that we have the SessionId, logoff the user
logoff $SessionId /server:$ServerName

# Get the user logged into server
$ServerName = "FL-JAX-RIDB-P1"
quser /server:$ServerName