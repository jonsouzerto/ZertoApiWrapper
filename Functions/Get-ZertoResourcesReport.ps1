function Get-ZertoResourcesReport {
    [cmdletbinding( DefaultParameterSetName = "main" )]
    param(
        [Parameter( ParameterSetName = "filter" )]
        [string]$startTime,
        [Parameter( ParameterSetName = "filter" )]
        [string]$endTime,
        [Parameter( ParameterSetName = "filter" )]
        [string]$pageNumber,
        [Parameter( ParameterSetName = "filter" )]
        [string]$pageSize,
        [Parameter( ParameterSetName = "filter" )]
        [string]$zorgName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$vmName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$vpgName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$protectedSiteName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$protectedClusterName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$protectedHostName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$protectedOrgVdc,
        [Parameter( ParameterSetName = "filter" )]
        [string]$protectedVdcOrg,
        [Parameter( ParameterSetName = "filter" )]
        [string]$recoverySiteName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$recoveryClusterName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$recoveryHostName,
        [Parameter( ParameterSetName = "filter" )]
        [string]$recoveryOrgVdc,
        [Parameter( ParameterSetName = "filter" )]
        [string]$recoveryVdcOrg
    )

    begin {
        $baseUri = "reports/resources"
    }

    process {
        switch ( $PSCmdlet.ParameterSetName ) {
            "filter" {
                $filter = New-ZertoApiFilter -filterTable $PSBoundParameters
                $uri = "{0}{1}" -f $baseUri, $filter
                $results = New-ZertoRestRequest -uri $uri
            }

            default {
                $results = Invoke-ZertoRestRequest -uri $baseUri
            }
        }
    }

    end {
        return $results
    }
}