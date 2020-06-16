# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information to be updated.
  class Integration::Models::UpdateIntegrationInstanceDetails
    INTEGRATION_INSTANCE_TYPE_ENUM = [
      INTEGRATION_INSTANCE_TYPE_STANDARD = 'STANDARD'.freeze,
      INTEGRATION_INSTANCE_TYPE_ENTERPRISE = 'ENTERPRISE'.freeze
    ].freeze

    # Integration Instance Identifier.
    # @return [String]
    attr_accessor :display_name

    # Standard or Enterprise type
    # @return [String]
    attr_reader :integration_instance_type

    # Simple key-value pair that is applied without any predefined name,
    # type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Usage of predefined tag keys. These predefined keys are scoped to
    # namespaces.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Bring your own license.
    # @return [BOOLEAN]
    attr_accessor :is_byol

    # The number of configured message packs
    # @return [Integer]
    attr_accessor :message_packs

    # The file server is enabled or not.
    # @return [BOOLEAN]
    attr_accessor :is_file_server_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'integration_instance_type': :'integrationInstanceType',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'is_byol': :'isByol',
        'message_packs': :'messagePacks',
        'is_file_server_enabled': :'isFileServerEnabled'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'integration_instance_type': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'is_byol': :'BOOLEAN',
        'message_packs': :'Integer',
        'is_file_server_enabled': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :integration_instance_type The value to assign to the {#integration_instance_type} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [BOOLEAN] :is_byol The value to assign to the {#is_byol} property
    # @option attributes [Integer] :message_packs The value to assign to the {#message_packs} property
    # @option attributes [BOOLEAN] :is_file_server_enabled The value to assign to the {#is_file_server_enabled} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.integration_instance_type = attributes[:'integrationInstanceType'] if attributes[:'integrationInstanceType']

      raise 'You cannot provide both :integrationInstanceType and :integration_instance_type' if attributes.key?(:'integrationInstanceType') && attributes.key?(:'integration_instance_type')

      self.integration_instance_type = attributes[:'integration_instance_type'] if attributes[:'integration_instance_type']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.is_byol = attributes[:'isByol'] unless attributes[:'isByol'].nil?

      raise 'You cannot provide both :isByol and :is_byol' if attributes.key?(:'isByol') && attributes.key?(:'is_byol')

      self.is_byol = attributes[:'is_byol'] unless attributes[:'is_byol'].nil?

      self.message_packs = attributes[:'messagePacks'] if attributes[:'messagePacks']

      raise 'You cannot provide both :messagePacks and :message_packs' if attributes.key?(:'messagePacks') && attributes.key?(:'message_packs')

      self.message_packs = attributes[:'message_packs'] if attributes[:'message_packs']

      self.is_file_server_enabled = attributes[:'isFileServerEnabled'] unless attributes[:'isFileServerEnabled'].nil?
      self.is_file_server_enabled = false if is_file_server_enabled.nil? && !attributes.key?(:'isFileServerEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isFileServerEnabled and :is_file_server_enabled' if attributes.key?(:'isFileServerEnabled') && attributes.key?(:'is_file_server_enabled')

      self.is_file_server_enabled = attributes[:'is_file_server_enabled'] unless attributes[:'is_file_server_enabled'].nil?
      self.is_file_server_enabled = false if is_file_server_enabled.nil? && !attributes.key?(:'isFileServerEnabled') && !attributes.key?(:'is_file_server_enabled') # rubocop:disable Style/StringLiterals
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integration_instance_type Object to be assigned
    def integration_instance_type=(integration_instance_type)
      raise "Invalid value for 'integration_instance_type': this must be one of the values in INTEGRATION_INSTANCE_TYPE_ENUM." if integration_instance_type && !INTEGRATION_INSTANCE_TYPE_ENUM.include?(integration_instance_type)

      @integration_instance_type = integration_instance_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        integration_instance_type == other.integration_instance_type &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        is_byol == other.is_byol &&
        message_packs == other.message_packs &&
        is_file_server_enabled == other.is_file_server_enabled
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, integration_instance_type, freeform_tags, defined_tags, is_byol, message_packs, is_file_server_enabled].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
