# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The stack object. Stacks represent definitions of groups of Oracle Cloud Infrastructure
  # resources that you can act upon as a group. You take action on stacks by using jobs.
  #
  class ResourceManager::Models::Stack
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    STACK_DRIFT_STATUS_ENUM = [
      STACK_DRIFT_STATUS_NOT_CHECKED = 'NOT_CHECKED'.freeze,
      STACK_DRIFT_STATUS_IN_SYNC = 'IN_SYNC'.freeze,
      STACK_DRIFT_STATUS_DRIFTED = 'DRIFTED'.freeze,
      STACK_DRIFT_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Unique identifier ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)) for the stack.
    # @return [String]
    attr_accessor :id

    # Unique identifier ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)) for the compartment where the stack is located.
    # @return [String]
    attr_accessor :compartment_id

    # Human-readable name of the stack.
    # @return [String]
    attr_accessor :display_name

    # Description of the stack.
    # @return [String]
    attr_accessor :description

    # The date and time at which the stack was created.
    # @return [DateTime]
    attr_accessor :time_created

    # The current lifecycle state of the stack.
    # For more information about resource states in Resource Manager, see
    # [Key Concepts](https://docs.cloud.oracle.com/iaas/Content/ResourceManager/Concepts/resourcemanager.htm#concepts).
    #
    # @return [String]
    attr_reader :lifecycle_state

    # @return [OCI::ResourceManager::Models::ConfigSource]
    attr_accessor :config_source

    # Terraform variables associated with this resource.
    # Maximum number of variables supported is 100.
    # The maximum size of each variable, including both name and value, is 4096 bytes.
    # Example: `{\"CompartmentId\": \"compartment-id-value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :variables

    # The version of Terraform specified for the stack. Example: `0.12.x`
    #
    # @return [String]
    attr_accessor :terraform_version

    # Drift status of the stack.
    # Drift refers to differences between the actual (current) state of the stack and the expected (defined) state of the stack.
    #
    # @return [String]
    attr_reader :stack_drift_status

    # Date and time when the drift detection was last executed. Format is defined by RFC3339.
    # Example: 2020-01-25T21:10:29.600Z
    #
    # @return [DateTime]
    attr_accessor :time_drift_last_checked

    # Free-form tags associated with the resource. Each tag is a key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'description': :'description',
        'time_created': :'timeCreated',
        'lifecycle_state': :'lifecycleState',
        'config_source': :'configSource',
        'variables': :'variables',
        'terraform_version': :'terraformVersion',
        'stack_drift_status': :'stackDriftStatus',
        'time_drift_last_checked': :'timeDriftLastChecked',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'compartment_id': :'String',
        'display_name': :'String',
        'description': :'String',
        'time_created': :'DateTime',
        'lifecycle_state': :'String',
        'config_source': :'OCI::ResourceManager::Models::ConfigSource',
        'variables': :'Hash<String, String>',
        'terraform_version': :'String',
        'stack_drift_status': :'String',
        'time_drift_last_checked': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [OCI::ResourceManager::Models::ConfigSource] :config_source The value to assign to the {#config_source} property
    # @option attributes [Hash<String, String>] :variables The value to assign to the {#variables} property
    # @option attributes [String] :terraform_version The value to assign to the {#terraform_version} property
    # @option attributes [String] :stack_drift_status The value to assign to the {#stack_drift_status} property
    # @option attributes [DateTime] :time_drift_last_checked The value to assign to the {#time_drift_last_checked} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.config_source = attributes[:'configSource'] if attributes[:'configSource']

      raise 'You cannot provide both :configSource and :config_source' if attributes.key?(:'configSource') && attributes.key?(:'config_source')

      self.config_source = attributes[:'config_source'] if attributes[:'config_source']

      self.variables = attributes[:'variables'] if attributes[:'variables']

      self.terraform_version = attributes[:'terraformVersion'] if attributes[:'terraformVersion']

      raise 'You cannot provide both :terraformVersion and :terraform_version' if attributes.key?(:'terraformVersion') && attributes.key?(:'terraform_version')

      self.terraform_version = attributes[:'terraform_version'] if attributes[:'terraform_version']

      self.stack_drift_status = attributes[:'stackDriftStatus'] if attributes[:'stackDriftStatus']

      raise 'You cannot provide both :stackDriftStatus and :stack_drift_status' if attributes.key?(:'stackDriftStatus') && attributes.key?(:'stack_drift_status')

      self.stack_drift_status = attributes[:'stack_drift_status'] if attributes[:'stack_drift_status']

      self.time_drift_last_checked = attributes[:'timeDriftLastChecked'] if attributes[:'timeDriftLastChecked']

      raise 'You cannot provide both :timeDriftLastChecked and :time_drift_last_checked' if attributes.key?(:'timeDriftLastChecked') && attributes.key?(:'time_drift_last_checked')

      self.time_drift_last_checked = attributes[:'time_drift_last_checked'] if attributes[:'time_drift_last_checked']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stack_drift_status Object to be assigned
    def stack_drift_status=(stack_drift_status)
      # rubocop:disable Style/ConditionalAssignment
      if stack_drift_status && !STACK_DRIFT_STATUS_ENUM.include?(stack_drift_status)
        OCI.logger.debug("Unknown value for 'stack_drift_status' [" + stack_drift_status + "]. Mapping to 'STACK_DRIFT_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @stack_drift_status = STACK_DRIFT_STATUS_UNKNOWN_ENUM_VALUE
      else
        @stack_drift_status = stack_drift_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        description == other.description &&
        time_created == other.time_created &&
        lifecycle_state == other.lifecycle_state &&
        config_source == other.config_source &&
        variables == other.variables &&
        terraform_version == other.terraform_version &&
        stack_drift_status == other.stack_drift_status &&
        time_drift_last_checked == other.time_drift_last_checked &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [id, compartment_id, display_name, description, time_created, lifecycle_state, config_source, variables, terraform_version, stack_drift_status, time_drift_last_checked, freeform_tags, defined_tags].hash
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
