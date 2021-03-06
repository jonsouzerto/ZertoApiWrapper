<# .ExternalHelp ./en-us/ZertoApiWrapper-help.xml #>
function Get-ZertoZorg {
    [cmdletbinding( DefaultParameterSetName = "default" )]
    param(
        [Parameter(
            ParameterSetName = "zorgIdentifier",
            HelpMessage = "Identifier(s) of the ZORG."
        )]
        [ValidateNotNullOrEmpty()]
        [Alias("zorgId")]
        [string[]]$zorgIdentifier
    )

    begin {
        $baseUri = "zorgs"
        $returnObject = @()
    }

    process {
        if ( $PSCmdlet.ParameterSetName -eq "default" ) {
            $returnObject = Invoke-ZertoRestRequest -uri $baseUri
        } elseif ( $PSCmdlet.ParameterSetName -eq "zorgIdentifier" ) {
            $returnObject = foreach ( $id in $zorgIdentifier ) {
                $uri = "{0}/{1}" -f $baseUri, $id
                Invoke-ZertoRestRequest -uri $uri
            }
        }
    }

    end {
        return $returnObject
    }
}
