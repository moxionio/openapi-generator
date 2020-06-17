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

.PARAMETER ArrayNumber
No description available.

.OUTPUTS

ArrayOfNumberOnly<PSCustomObject>
#>

function Initialize-PSArrayOfNumberOnly {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Decimal[]]
        ${ArrayNumber}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $PSO = [PSCustomObject]@{
            "ArrayNumber" = ${ArrayNumber}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ArrayOfNumberOnly<PSCustomObject>

.DESCRIPTION

Convert from JSON to ArrayOfNumberOnly<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ArrayOfNumberOnly<PSCustomObject>
#>
function ConvertFrom-PSJsonToArrayOfNumberOnly {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSArrayOfNumberOnly' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSArrayOfNumberOnly
        $AllProperties = ("ArrayNumber")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ArrayNumber"))) { #optional property not found
            $ArrayNumber = $null
        } else {
            $ArrayNumber = $JsonParameters.PSobject.Properties["ArrayNumber"].value
        }

        $PSO = [PSCustomObject]@{
            "ArrayNumber" = ${ArrayNumber}
        }

        return $PSO
    }

}

