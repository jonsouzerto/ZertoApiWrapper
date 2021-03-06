---
external help file: ZertoApiWrapper-help.xml
Module Name: ZertoApiWrapper
online version: https://github.com/ZertoPublic/ZertoApiWrapper/blob/master/docs/Add-ZertoPeerSite.md
schema: 2.0.0
---

# Add-ZertoPeerSite

## SYNOPSIS
Pairs the current Zerto Virtual Manager to the target Zerto Virtual Manager

## SYNTAX

```
Add-ZertoPeerSite [-targetHost] <String> [[-targetPort] <Int32>] [-token <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Pairs the current Zerto Virtual Manager to the target Zerto Virtual Manager by leveraging the Zerto Peer Sites API end point.

## EXAMPLES

### Example 1
```powershell
PS C:\> Add-ZertoPeerSite -targetHost "192.168.2.100"
```

Pairs the current Zerto Virtual Manager to the Zerto Virtual Manager at IP address 192.168.2.100. Use this method when pairing Zerto Virtual Managers that are prior to version 7.5

### Example 2
```powershell
PS C:\> Add-ZertoPeerSite -targetHost "192.168.2.100" -targetPort "9071" -token "GeneratedFromTargetZVM"
```

Pairs the current Zerto Virtual Manager to the Zerto Virtual Manager at IP address 192.168.2.100 over Port 9071. Use this method when pairing Zerto Virtual Managers that are version 7.5 or later.

## PARAMETERS

### -targetHost
Target Hostname or IP address to pair the localsite to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -targetPort
Target communication port.
Default is 9081

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: "9081"
Accept pipeline input: False
Accept wildcard characters: False
```

### -token
The generated token from the destination site. Note: This is only supported when both sites support pairing authentication. This was implemented to support ZVR 7.5 and later.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

[Zerto REST API Peer Site End Point Documentation](http://s3.amazonaws.com/zertodownload_docs/Latest/Zerto%20Virtual%20Replication%20Zerto%20Virtual%20Manager%20%28ZVM%29%20-%20vSphere%20Online%20Help/index.html#page/RestfulAPIs%2FStatusAPIs.5.044.html%23)
