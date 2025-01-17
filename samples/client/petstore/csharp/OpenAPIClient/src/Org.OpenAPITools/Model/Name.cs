/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// Model for testing model name same as property name
    /// </summary>
    [DataContract]
    public partial class Name :  IEquatable<Name>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Name" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected Name() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="Name" /> class.
        /// </summary>
        /// <param name="varName">varName (required).</param>
        /// <param name="property">property.</param>
        public Name(int varName = default(int), string property = default(string))
        {
            // to ensure "varName" is required (not null)
            if (varName == null)
            {
                throw new InvalidDataException("varName is a required property for Name and cannot be null");
            }
            else
            {
                this.VarName = varName;
            }

            this.Property = property;
        }

        /// <summary>
        /// Gets or Sets VarName
        /// </summary>
        [DataMember(Name="name", EmitDefaultValue=true)]
        public int VarName { get; set; }

        /// <summary>
        /// Gets or Sets SnakeCase
        /// </summary>
        [DataMember(Name="snake_case", EmitDefaultValue=false)]
        public int SnakeCase { get; private set; }

        /// <summary>
        /// Gets or Sets Property
        /// </summary>
        [DataMember(Name="property", EmitDefaultValue=false)]
        public string Property { get; set; }

        /// <summary>
        /// Gets or Sets var123Number
        /// </summary>
        [DataMember(Name="123Number", EmitDefaultValue=false)]
        public int var123Number { get; private set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class Name {\n");
            sb.Append("  VarName: ").Append(VarName).Append("\n");
            sb.Append("  SnakeCase: ").Append(SnakeCase).Append("\n");
            sb.Append("  Property: ").Append(Property).Append("\n");
            sb.Append("  var123Number: ").Append(var123Number).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as Name);
        }

        /// <summary>
        /// Returns true if Name instances are equal
        /// </summary>
        /// <param name="input">Instance of Name to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Name input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.VarName == input.VarName ||
                    (this.VarName != null &&
                    this.VarName.Equals(input.VarName))
                ) && 
                (
                    this.SnakeCase == input.SnakeCase ||
                    (this.SnakeCase != null &&
                    this.SnakeCase.Equals(input.SnakeCase))
                ) && 
                (
                    this.Property == input.Property ||
                    (this.Property != null &&
                    this.Property.Equals(input.Property))
                ) && 
                (
                    this.var123Number == input.var123Number ||
                    (this.var123Number != null &&
                    this.var123Number.Equals(input.var123Number))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.VarName != null)
                    hashCode = hashCode * 59 + this.VarName.GetHashCode();
                if (this.SnakeCase != null)
                    hashCode = hashCode * 59 + this.SnakeCase.GetHashCode();
                if (this.Property != null)
                    hashCode = hashCode * 59 + this.Property.GetHashCode();
                if (this.var123Number != null)
                    hashCode = hashCode * 59 + this.var123Number.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
