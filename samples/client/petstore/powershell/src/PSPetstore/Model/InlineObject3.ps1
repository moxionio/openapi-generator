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

.PARAMETER Integer
None

.PARAMETER Int32
None

.PARAMETER Int64
None

.PARAMETER Number
None

.PARAMETER Float
None

.PARAMETER Double
None

.PARAMETER String
None

.PARAMETER PatternWithoutDelimiter
None

.PARAMETER Byte
None

.PARAMETER Binary
None

.PARAMETER Date
None

.PARAMETER DateTime
None

.PARAMETER Password
None

.PARAMETER Callback
None

.OUTPUTS

InlineObject3<PSCustomObject>
#>

function Initialize-PSInlineObject3 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Integer},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Int32},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Int64},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Decimal]
        ${Number},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Float},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${Double},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("/[a-z]/i")]
        [String]
        ${String},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^[A-Z].*")]
        [String]
        ${PatternWithoutDelimiter},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Byte},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${Binary},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Date},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DateTime},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Callback}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSInlineObject3' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Integer -and $Integer -gt 100) {
          throw "invalid value for 'Integer', must be smaller than or equal to 100."
        }

        if (!$Integer -and $Integer -lt 10) {
          throw "invalid value for 'Integer', must be greater than or equal to 10."
        }

        if (!$Int32 -and $Int32 -gt 200) {
          throw "invalid value for 'Int32', must be smaller than or equal to 200."
        }

        if (!$Int32 -and $Int32 -lt 20) {
          throw "invalid value for 'Int32', must be greater than or equal to 20."
        }

        if (!$Number) {
            throw "invalid value for 'Number', 'Number' cannot be null."
        }

        if ($Number -gt 543.2) {
          throw "invalid value for 'Number', must be smaller than or equal to 543.2."
        }

        if ($Number -lt 32.1) {
          throw "invalid value for 'Number', must be greater than or equal to 32.1."
        }

        if (!$Float -and $Float -gt 987.6) {
          throw "invalid value for 'Float', must be smaller than or equal to 987.6."
        }

        if (!$Double) {
            throw "invalid value for 'Double', 'Double' cannot be null."
        }

        if ($Double -gt 123.4) {
          throw "invalid value for 'Double', must be smaller than or equal to 123.4."
        }

        if ($Double -lt 67.8) {
          throw "invalid value for 'Double', must be greater than or equal to 67.8."
        }

        if (!$PatternWithoutDelimiter) {
            throw "invalid value for 'PatternWithoutDelimiter', 'PatternWithoutDelimiter' cannot be null."
        }

        if (!$Byte) {
            throw "invalid value for 'Byte', 'Byte' cannot be null."
        }

        if (!$Password -and $Password.length -gt 64) {
            throw "invalid value for 'Password', the character length must be smaller than or equal to 64."
        }

        if (!$Password -and $Password.length -lt 10) {
            throw "invalid value for 'Password', the character length must be great than or equal to 10."
        }

        $PSO = [PSCustomObject]@{
            "integer" = ${Integer}
            "int32" = ${Int32}
            "int64" = ${Int64}
            "number" = ${Number}
            "float" = ${Float}
            "double" = ${Double}
            "string" = ${String}
            "pattern_without_delimiter" = ${PatternWithoutDelimiter}
            "byte" = ${Byte}
            "binary" = ${Binary}
            "date" = ${Date}
            "dateTime" = ${DateTime}
            "password" = ${Password}
            "callback" = ${Callback}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InlineObject3<PSCustomObject>

.DESCRIPTION

Convert from JSON to InlineObject3<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InlineObject3<PSCustomObject>
#>
function ConvertFrom-PSJsonToInlineObject3 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSInlineObject3' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSInlineObject3
        $AllProperties = ("integer", "int32", "int64", "number", "float", "double", "string", "pattern_without_delimiter", "byte", "binary", "date", "dateTime", "password", "callback")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property `number` missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "number"))) {
            throw "Error! JSON cannot be serialized due to the required property `number` missing."
        } else {
            $Number = $JsonParameters.PSobject.Properties["number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "double"))) {
            throw "Error! JSON cannot be serialized due to the required property `double` missing."
        } else {
            $Double = $JsonParameters.PSobject.Properties["double"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pattern_without_delimiter"))) {
            throw "Error! JSON cannot be serialized due to the required property `pattern_without_delimiter` missing."
        } else {
            $PatternWithoutDelimiter = $JsonParameters.PSobject.Properties["pattern_without_delimiter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "byte"))) {
            throw "Error! JSON cannot be serialized due to the required property `byte` missing."
        } else {
            $Byte = $JsonParameters.PSobject.Properties["byte"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "integer"))) { #optional property not found
            $Integer = $null
        } else {
            $Integer = $JsonParameters.PSobject.Properties["integer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "int32"))) { #optional property not found
            $Int32 = $null
        } else {
            $Int32 = $JsonParameters.PSobject.Properties["int32"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "int64"))) { #optional property not found
            $Int64 = $null
        } else {
            $Int64 = $JsonParameters.PSobject.Properties["int64"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "float"))) { #optional property not found
            $Float = $null
        } else {
            $Float = $JsonParameters.PSobject.Properties["float"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "string"))) { #optional property not found
            $String = $null
        } else {
            $String = $JsonParameters.PSobject.Properties["string"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "binary"))) { #optional property not found
            $Binary = $null
        } else {
            $Binary = $JsonParameters.PSobject.Properties["binary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dateTime"))) { #optional property not found
            $DateTime = $null
        } else {
            $DateTime = $JsonParameters.PSobject.Properties["dateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "callback"))) { #optional property not found
            $Callback = $null
        } else {
            $Callback = $JsonParameters.PSobject.Properties["callback"].value
        }

        $PSO = [PSCustomObject]@{
            "integer" = ${Integer}
            "int32" = ${Int32}
            "int64" = ${Int64}
            "number" = ${Number}
            "float" = ${Float}
            "double" = ${Double}
            "string" = ${String}
            "pattern_without_delimiter" = ${PatternWithoutDelimiter}
            "byte" = ${Byte}
            "binary" = ${Binary}
            "date" = ${Date}
            "dateTime" = ${DateTime}
            "password" = ${Password}
            "callback" = ${Callback}
        }

        return $PSO
    }

}

