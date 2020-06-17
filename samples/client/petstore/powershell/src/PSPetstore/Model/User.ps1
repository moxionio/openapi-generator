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

.PARAMETER Id
No description available.

.PARAMETER Username
No description available.

.PARAMETER FirstName
No description available.

.PARAMETER LastName
No description available.

.PARAMETER Email
No description available.

.PARAMETER Password
No description available.

.PARAMETER Phone
No description available.

.PARAMETER UserStatus
User Status

.PARAMETER ObjectWithNoDeclaredProps
test code generation for objects Value must be a map of strings to values. It cannot be the 'null' value.

.PARAMETER ObjectWithNoDeclaredPropsNullable
test code generation for nullable objects. Value must be a map of strings to values or the 'null' value.

.PARAMETER AnyTypeProp
test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. See https://github.com/OAI/OpenAPI-Specification/issues/1389

.PARAMETER AnyTypePropNullable
test code generation for any type Here the 'type' attribute is not specified, which means the value can be anything, including the null value, string, number, boolean, array or object. The 'nullable' attribute does not change the allowed values.

.OUTPUTS

User<PSCustomObject>
#>

function Initialize-PSUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${UserStatus},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ObjectWithNoDeclaredProps},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ObjectWithNoDeclaredPropsNullable},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AnyTypeProp},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AnyTypePropNullable}
    )

    Process {
        'Creating PSCustomObject: PSPetstore => PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "password" = ${Password}
            "phone" = ${Phone}
            "userStatus" = ${UserStatus}
            "objectWithNoDeclaredProps" = ${ObjectWithNoDeclaredProps}
            "objectWithNoDeclaredPropsNullable" = ${ObjectWithNoDeclaredPropsNullable}
            "anyTypeProp" = ${AnyTypeProp}
            "anyTypePropNullable" = ${AnyTypePropNullable}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to User<PSCustomObject>

.DESCRIPTION

Convert from JSON to User<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

User<PSCustomObject>
#>
function ConvertFrom-PSJsonToUser {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSPetstore => PSUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PSUser
        $AllProperties = ("id", "username", "firstName", "lastName", "email", "password", "phone", "userStatus", "objectWithNoDeclaredProps", "objectWithNoDeclaredPropsNullable", "anyTypeProp", "anyTypePropNullable")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userStatus"))) { #optional property not found
            $UserStatus = $null
        } else {
            $UserStatus = $JsonParameters.PSobject.Properties["userStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectWithNoDeclaredProps"))) { #optional property not found
            $ObjectWithNoDeclaredProps = $null
        } else {
            $ObjectWithNoDeclaredProps = $JsonParameters.PSobject.Properties["objectWithNoDeclaredProps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectWithNoDeclaredPropsNullable"))) { #optional property not found
            $ObjectWithNoDeclaredPropsNullable = $null
        } else {
            $ObjectWithNoDeclaredPropsNullable = $JsonParameters.PSobject.Properties["objectWithNoDeclaredPropsNullable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "anyTypeProp"))) { #optional property not found
            $AnyTypeProp = $null
        } else {
            $AnyTypeProp = $JsonParameters.PSobject.Properties["anyTypeProp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "anyTypePropNullable"))) { #optional property not found
            $AnyTypePropNullable = $null
        } else {
            $AnyTypePropNullable = $JsonParameters.PSobject.Properties["anyTypePropNullable"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "username" = ${Username}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "password" = ${Password}
            "phone" = ${Phone}
            "userStatus" = ${UserStatus}
            "objectWithNoDeclaredProps" = ${ObjectWithNoDeclaredProps}
            "objectWithNoDeclaredPropsNullable" = ${ObjectWithNoDeclaredPropsNullable}
            "anyTypeProp" = ${AnyTypeProp}
            "anyTypePropNullable" = ${AnyTypePropNullable}
        }

        return $PSO
    }

}

