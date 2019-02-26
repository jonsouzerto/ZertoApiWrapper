function Remove-ZertoVpg {
    [cmdletbinding( SupportsShouldProcess = $true )]
    param(
        [Parameter(
            Mandatory = $true,
            HelpMessage = "Name of the VPG to delete."
        )]
        [string]$vpgName,
        [Parameter(
            HelpMessage = "Use this switch to keep the recovery volumes at the target site.  If the virtual machines in the deleted VPG are reprotected, these volumes can be used as preseeded volumes to speed up the initial synchronization of the new VPG."
        )]
        [switch]$keepRecoveryVolumes,
        [Parameter(
            HelpMessage = "Use this switch to force delete the VPG."
        )]
        [switch]$force
    )

    begin {
        $baseUri = "vpgs"
        $vpgIdentifier = $(get-zertovpg -name $vpgName).vpgIdentifier
    }

    process {
        $vpgIdentifier = $(get-zertovpg -name $vpgName).vpgIdentifier
        if ( $vpgIdentifier ) {
            $uri = "{0}/{1}" -f $baseUri, $vpgIdentifier
            $body = @{"Force" = $force; "KeepRecoveryVolumes" = $keepRecoveryVolumes}
            if ($PSCmdlet.ShouldProcess( $vpgName + " and these settings: " + $($body | ConvertTo-Json) ) ) {
                Invoke-ZertoRestRequest -uri $uri -body $($body | ConvertTo-Json) -Method "DELETE"
            }
        } else {
            Write-Output "VPG with name $vpgName not found. Please check the name and try again"
        }
    }

    end {
        # Nothing to do
    }
}
