param(
[string]$token,
[string]$method,
[string]$Header,
[string]$RequestBody,
[string]$ExpectedOutput)



#$token ="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"

#$Header = "application/vnd.github.v3+json"

#$RequestBody = '{"name":"Created-From-Script,"visibility":"private"}'

$AuthorizationHeader = @{
    Authorization = 'Bearer ' + $token
    Accept = $Header
} 

$repobody = $RequestBody 


 $getapirequest = @{
		Uri = "https://api.github.com/orgs/CanarysPlayground/repos"
		Method = "Post"
                body = $repobody
		ContentType = "application/json"
		Headers = $AuthorizationHeader
        }

$apiobject = Invoke-RestMethod @getapirequest -TimeoutSec 5000

$output = $apiobject.name

if ($output -ne $ExpectedOutput)
{
	Write-Error "Not an Expected Response"
}else { Write-Host "Expected Output" }
