# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Job log details. A job log is an audit log record inserted during the lifecycle of a job execution instance.
  #
  class DataCatalog::Models::JobLog
    # **[Required]** Unique key of the job log that is immutable.
    # @return [String]
    attr_accessor :key

    # The unique key of the parent job execution for which the log resource was created.
    # @return [String]
    attr_accessor :job_execution_key

    # OCID of the user who created the log record for this job. Usually the executor of the job instance.
    #
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who created the log record for this job. Usually the executor of the job instance.
    #
    # @return [String]
    attr_accessor :updated_by_id

    # Job log update time. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_updated

    # The date and time the job log was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Severity level for this log.
    # @return [String]
    attr_accessor :severity

    # Message for this job log.
    # @return [String]
    attr_accessor :log_message

    # URI to the job log instance in the API.
    # @return [String]
    attr_accessor :uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'job_execution_key': :'jobExecutionKey',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById',
        'time_updated': :'timeUpdated',
        'time_created': :'timeCreated',
        'severity': :'severity',
        'log_message': :'logMessage',
        'uri': :'uri'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'job_execution_key': :'String',
        'created_by_id': :'String',
        'updated_by_id': :'String',
        'time_updated': :'DateTime',
        'time_created': :'DateTime',
        'severity': :'String',
        'log_message': :'String',
        'uri': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :job_execution_key The value to assign to the {#job_execution_key} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :severity The value to assign to the {#severity} property
    # @option attributes [String] :log_message The value to assign to the {#log_message} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.job_execution_key = attributes[:'jobExecutionKey'] if attributes[:'jobExecutionKey']

      raise 'You cannot provide both :jobExecutionKey and :job_execution_key' if attributes.key?(:'jobExecutionKey') && attributes.key?(:'job_execution_key')

      self.job_execution_key = attributes[:'job_execution_key'] if attributes[:'job_execution_key']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.severity = attributes[:'severity'] if attributes[:'severity']

      self.log_message = attributes[:'logMessage'] if attributes[:'logMessage']

      raise 'You cannot provide both :logMessage and :log_message' if attributes.key?(:'logMessage') && attributes.key?(:'log_message')

      self.log_message = attributes[:'log_message'] if attributes[:'log_message']

      self.uri = attributes[:'uri'] if attributes[:'uri']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        job_execution_key == other.job_execution_key &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id &&
        time_updated == other.time_updated &&
        time_created == other.time_created &&
        severity == other.severity &&
        log_message == other.log_message &&
        uri == other.uri
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
      [key, job_execution_key, created_by_id, updated_by_id, time_updated, time_created, severity, log_message, uri].hash
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
