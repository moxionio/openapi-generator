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

.PARAMETER Client
No description available.

.OUTPUTS

Client<PSCustomObject>
#>

function Initialize-PSClient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Client}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $PSO = [PSCustomObject]@{
            "client" = ${Client}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Client<PSCustomObject>

.DESCRIPTION

Convert from JSON to Client<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Client<PSCustomObject>
#>
function ConvertFrom-PSJsonToClient {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSClient
        $AllProperties = ("client")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "client"))) { #optional property not found
            $Client = $null
        } else {
            $Client = $JsonParameters.PSobject.Properties["client"].value
        }

        $PSO = [PSCustomObject]@{
            "client" = ${Client}
        }

        return $PSO
    }

}

