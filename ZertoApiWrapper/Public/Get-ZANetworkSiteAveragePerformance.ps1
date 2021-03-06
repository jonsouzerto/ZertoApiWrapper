<# .ExternalHelp ./en-us/ZertoApiWrapper-help.xml #>
function Get-ZANetworkSiteAveragePerformance {
    [CmdletBinding(DefaultParameterSetName = "ProtectedSite")]
    param (
        [Parameter(
            HelpMessage = "Protected site identifier. A site identification is required for at least one of the sites.",
            ParameterSetName = "ProtectedSite",
            Mandatory
        )]
        [Parameter(
            HelpMessage = "Protected site identifier. A site identification is required for at least one of the sites.",
            ParameterSetName = "RecoverySite"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$protectedSiteIdentifier,
        [Parameter(
            HelpMessage = "Recovery site identifier. If the recovery site identifier is omitted, the API will show all outgoing traffic from the protected site to its replicating sites.",
            ParameterSetName = "RecoverySite",
            Mandatory
        )]
        [Parameter(
            HelpMessage = "Recovery site identifier. If the recovery site identifier is omitted, the API will show all outgoing traffic from the protected site to its replicating sites.",
            ParameterSetName = "ProtectedSite"
        )]
        [ValidateNotNullOrEmpty()]
        [string]$recoverySiteIdentifier,
        [Parameter(
            HelpMessage = "Start date in RFC 3339 standard ('1970-01-01T00:00:00Z'). If the start date is omitted, the default start date is 7 days before the end date."
        )]
        [ValidateNotNullOrEmpty()]
        [string]$startDate,
        [Parameter(
            HelpMessage = "End date in RFC 3339 standard ('1970-01-01T00:00:00Z'). If the end date is omitted, the default end date is the current time."
        )]
        [ValidateNotNullOrEmpty()]
        [string]$endDate,
        [Parameter(
            HelpMessage = "The ZORG identifier by which to filter the executive summary."
        )]
        [ValidateNotNullOrEmpty()]
        [string]$zOrgIdentifier,
        [Parameter(
            HelpMessage = "The interval selected within the duration of the report. The interval can be per hour, for up to 15 days’ time frame or per day, for between 15 to 30 days' time frame. Submit value in Seconds"
        )]
        [ValidateRange(60, 2678400)]
        [Int32]$interval
    )

    $filter = Get-ZertoAPIFilter -filtertable $PSBoundParameters
    $uri = "reports/sites-network-performance-average{0}" -f $filter
    Invoke-ZARestRequest -uri $uri
}
