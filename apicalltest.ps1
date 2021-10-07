function apicall
{
param(
[string]$token,
[string]$method,
[string]$Header,
[string]$RequestBody)



#$token ="$NewSecret_TOKEN"

#$Header = "application/vnd.github.v3+json"

#$RequestBody = '{"name":"Created-From-Script,"visibility":"private"}'

$GitHubAdminHeader = @{
    Authorization = 'Bearer ' + $token
    Accept = $Header
} 

$repobody = $RequestBody 


 $getapirequest = @{
		Uri = "https://api.github.com/orgs/CanarysPlayground/repos"
		Method = "Post"
                body = $repobody
		ContentType = "application/json"
		Headers = $GitHubAdminHeader
        }

$apiobject = Invoke-RestMethod @getapirequest

return $apiobject

}

apicall -token $token -Header $Headers -RequestBody $RequestData
