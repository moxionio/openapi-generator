#
# OpenAPI Petstore
# This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: "" \\
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
Updated name of the pet

.PARAMETER Status
Updated status of the pet

.OUTPUTS

InlineObject<PSCustomObject>
#>

function Initialize-PSInlineObject {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSInlineObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InlineObject<PSCustomObject>

.DESCRIPTION

Convert from JSON to InlineObject<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InlineObject<PSCustomObject>
#>
function ConvertFrom-PSJsonToInlineObject {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSInlineObject' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSInlineObject
        $AllProperties = ("name", "status")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "status" = ${Status}
        }

        return $PSO
    }

}

