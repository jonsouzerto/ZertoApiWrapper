---
external help file: ZertoApiWrapper-help.xml
Module Name: ZertoApiWrapper
online version: https://github.com/ZertoPublic/ZertoApiWrapper/blob/master/docs/Invoke-ZertoFailoverCommit.md
schema: 2.0.0
---

# Invoke-ZertoFailoverCommit

## SYNOPSIS
Commit a running VPG failover

## SYNTAX

```
Invoke-ZertoFailoverCommit [-vpgName] <String[]> [-reverseProtection] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Commit a running VPG failover

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-ZertoFailoverCommit -vpgName "MyVpg"
```

Commits VPG "MyVpg" without reverse protection

### Example 1
```powershell
PS C:\> Invoke-ZertoFailoverCommit -vpgName "MyVpg" -reverseProtection
```

Commits a VPG with reverse protection

## PARAMETERS

### -reverseProtection
Use this switch to reverse protect the VPG(s) to the source site.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vpgName
Name(s) of the VPG(s) to commit.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
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
Shows what would happen if the cmdlet runs. The cmdlet is not run.

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

[Zerto REST API VPG End Point Documentation](http://s3.amazonaws.com/zertodownload_docs/Latest/Zerto%20Virtual%20Replication%20Zerto%20Virtual%20Manager%20%28ZVM%29%20-%20vSphere%20Online%20Help/RestfulAPIs/StatusAPIs.5.100.html#)
