Param(
    [Parameter(Mandatory=$true)][string]$activity_type,
    [Parameter(Mandatory=$true)][string]$start_date,
    [string]$end_date
)

## 
## .\OuraStats.ps1 -activity_type readiness -start_date 2019-02-15 | select -ExpandProperty readiness | select score
##

$token_uri = "https://api.ouraring.com/v1";
$token = <access token>";

if ($end_date)
{
    $activity_url = $token_uri + "/" + $activity_type + "?start=" + $start_date + ""&"end=" + $end_date + ""&"access_token=" + $token
}
else {
    $activity_url = $token_uri + "/" + $activity_type + "?start=" + $start_date + ""&"access_token=" + $token
}

$headers = @{"Authorization"="Bearer " + $token}"

$request = Invoke-RestMethod $activity_url -Method GET -Headers $headers
Write-Output $request 
