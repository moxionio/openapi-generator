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

.PARAMETER ClassName
No description available.

.OUTPUTS

BasquePig<PSCustomObject>
#>

function Initialize-PSBasquePig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ClassName}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSBasquePig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ClassName) {
            throw "invalid value for 'ClassName', 'ClassName' cannot be null."
        }

        $PSO = [PSCustomObject]@{
            "className" = ${ClassName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BasquePig<PSCustomObject>

.DESCRIPTION

Convert from JSON to BasquePig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BasquePig<PSCustomObject>
#>
function ConvertFrom-PSJsonToBasquePig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSBasquePig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSBasquePig
        $AllProperties = ("className")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `className` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "className"))) {
            throw "Error! JSON cannot be serialized due to the required property `className` missing."
        } else {
            $ClassName = $JsonParameters.PSobject.Properties["className"].value
        }

        $PSO = [PSCustomObject]@{
            "className" = ${ClassName}
        }

        return $PSO
    }

}

