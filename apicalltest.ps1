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


 $getmembersrequest = @{
					    Uri = "https://api.github.com/orgs/CanarysPlayground/repos"
					    Method = $method
                        body = $repobody
				    	ContentType = "application/json"
			    		Headers = $GitHubAdminHeader
        }

$membersobject = Invoke-RestMethod @getmembersrequest

$membersobject

}

apicall -token $token -Header $Headers -method $httpmethod -RequestBody $RequestData
