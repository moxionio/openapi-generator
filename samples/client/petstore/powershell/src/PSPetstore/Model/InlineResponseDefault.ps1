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

.PARAMETER String
No description available.

.OUTPUTS

InlineResponseDefault<PSCustomObject>
#>

function Initialize-PSInlineResponseDefault {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${String}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSInlineResponseDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $PSO = [PSCustomObject]@{
            "string" = ${String}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InlineResponseDefault<PSCustomObject>

.DESCRIPTION

Convert from JSON to InlineResponseDefault<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InlineResponseDefault<PSCustomObject>
#>
function ConvertFrom-PSJsonToInlineResponseDefault {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSInlineResponseDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSInlineResponseDefault
        $AllProperties = ("string")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "string"))) { #optional property not found
            $String = $null
        } else {
            $String = $JsonParameters.PSobject.Properties["string"].value
        }

        $PSO = [PSCustomObject]@{
            "string" = ${String}
        }

        return $PSO
    }

}

