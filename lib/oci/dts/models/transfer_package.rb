# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # TransferPackage model.
  class Dts::Models::TransferPackage
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PREPARING = 'PREPARING'.freeze,
      LIFECYCLE_STATE_SHIPPING = 'SHIPPING'.freeze,
      LIFECYCLE_STATE_RECEIVED = 'RECEIVED'.freeze,
      LIFECYCLE_STATE_PROCESSING = 'PROCESSING'.freeze,
      LIFECYCLE_STATE_PROCESSED = 'PROCESSED'.freeze,
      LIFECYCLE_STATE_RETURNED = 'RETURNED'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_CANCELLED = 'CANCELLED'.freeze,
      LIFECYCLE_STATE_CANCELLED_RETURNED = 'CANCELLED_RETURNED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # This attribute is required.
    # @return [String]
    attr_accessor :label

    # @return [String]
    attr_reader :lifecycle_state

    # @return [String]
    attr_accessor :transfer_job_id

    # @return [DateTime]
    attr_accessor :creation_time

    # @return [String]
    attr_accessor :original_package_delivery_tracking_number

    # @return [String]
    attr_accessor :return_package_delivery_tracking_number

    # @return [String]
    attr_accessor :package_delivery_vendor

    # @return [String]
    attr_accessor :transfer_site_shipping_address

    # Transfer Devices attached to this Transfer Package
    # @return [Array<String>]
    attr_accessor :attached_transfer_device_labels

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'label': :'label',
        'lifecycle_state': :'lifecycleState',
        'transfer_job_id': :'transferJobId',
        'creation_time': :'creationTime',
        'original_package_delivery_tracking_number': :'originalPackageDeliveryTrackingNumber',
        'return_package_delivery_tracking_number': :'returnPackageDeliveryTrackingNumber',
        'package_delivery_vendor': :'packageDeliveryVendor',
        'transfer_site_shipping_address': :'transferSiteShippingAddress',
        'attached_transfer_device_labels': :'attachedTransferDeviceLabels'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'label': :'String',
        'lifecycle_state': :'String',
        'transfer_job_id': :'String',
        'creation_time': :'DateTime',
        'original_package_delivery_tracking_number': :'String',
        'return_package_delivery_tracking_number': :'String',
        'package_delivery_vendor': :'String',
        'transfer_site_shipping_address': :'String',
        'attached_transfer_device_labels': :'Array<String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :label The value to assign to the {#label} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :transfer_job_id The value to assign to the {#transfer_job_id} property
    # @option attributes [DateTime] :creation_time The value to assign to the {#creation_time} property
    # @option attributes [String] :original_package_delivery_tracking_number The value to assign to the {#original_package_delivery_tracking_number} property
    # @option attributes [String] :return_package_delivery_tracking_number The value to assign to the {#return_package_delivery_tracking_number} property
    # @option attributes [String] :package_delivery_vendor The value to assign to the {#package_delivery_vendor} property
    # @option attributes [String] :transfer_site_shipping_address The value to assign to the {#transfer_site_shipping_address} property
    # @option attributes [Array<String>] :attached_transfer_device_labels The value to assign to the {#attached_transfer_device_labels} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.label = attributes[:'label'] if attributes[:'label']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.transfer_job_id = attributes[:'transferJobId'] if attributes[:'transferJobId']

      raise 'You cannot provide both :transferJobId and :transfer_job_id' if attributes.key?(:'transferJobId') && attributes.key?(:'transfer_job_id')

      self.transfer_job_id = attributes[:'transfer_job_id'] if attributes[:'transfer_job_id']

      self.creation_time = attributes[:'creationTime'] if attributes[:'creationTime']

      raise 'You cannot provide both :creationTime and :creation_time' if attributes.key?(:'creationTime') && attributes.key?(:'creation_time')

      self.creation_time = attributes[:'creation_time'] if attributes[:'creation_time']

      self.original_package_delivery_tracking_number = attributes[:'originalPackageDeliveryTrackingNumber'] if attributes[:'originalPackageDeliveryTrackingNumber']

      raise 'You cannot provide both :originalPackageDeliveryTrackingNumber and :original_package_delivery_tracking_number' if attributes.key?(:'originalPackageDeliveryTrackingNumber') && attributes.key?(:'original_package_delivery_tracking_number')

      self.original_package_delivery_tracking_number = attributes[:'original_package_delivery_tracking_number'] if attributes[:'original_package_delivery_tracking_number']

      self.return_package_delivery_tracking_number = attributes[:'returnPackageDeliveryTrackingNumber'] if attributes[:'returnPackageDeliveryTrackingNumber']

      raise 'You cannot provide both :returnPackageDeliveryTrackingNumber and :return_package_delivery_tracking_number' if attributes.key?(:'returnPackageDeliveryTrackingNumber') && attributes.key?(:'return_package_delivery_tracking_number')

      self.return_package_delivery_tracking_number = attributes[:'return_package_delivery_tracking_number'] if attributes[:'return_package_delivery_tracking_number']

      self.package_delivery_vendor = attributes[:'packageDeliveryVendor'] if attributes[:'packageDeliveryVendor']

      raise 'You cannot provide both :packageDeliveryVendor and :package_delivery_vendor' if attributes.key?(:'packageDeliveryVendor') && attributes.key?(:'package_delivery_vendor')

      self.package_delivery_vendor = attributes[:'package_delivery_vendor'] if attributes[:'package_delivery_vendor']

      self.transfer_site_shipping_address = attributes[:'transferSiteShippingAddress'] if attributes[:'transferSiteShippingAddress']

      raise 'You cannot provide both :transferSiteShippingAddress and :transfer_site_shipping_address' if attributes.key?(:'transferSiteShippingAddress') && attributes.key?(:'transfer_site_shipping_address')

      self.transfer_site_shipping_address = attributes[:'transfer_site_shipping_address'] if attributes[:'transfer_site_shipping_address']

      self.attached_transfer_device_labels = attributes[:'attachedTransferDeviceLabels'] if attributes[:'attachedTransferDeviceLabels']

      raise 'You cannot provide both :attachedTransferDeviceLabels and :attached_transfer_device_labels' if attributes.key?(:'attachedTransferDeviceLabels') && attributes.key?(:'attached_transfer_device_labels')

      self.attached_transfer_device_labels = attributes[:'attached_transfer_device_labels'] if attributes[:'attached_transfer_device_labels']
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

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        label == other.label &&
        lifecycle_state == other.lifecycle_state &&
        transfer_job_id == other.transfer_job_id &&
        creation_time == other.creation_time &&
        original_package_delivery_tracking_number == other.original_package_delivery_tracking_number &&
        return_package_delivery_tracking_number == other.return_package_delivery_tracking_number &&
        package_delivery_vendor == other.package_delivery_vendor &&
        transfer_site_shipping_address == other.transfer_site_shipping_address &&
        attached_transfer_device_labels == other.attached_transfer_device_labels
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
      [label, lifecycle_state, transfer_job_id, creation_time, original_package_delivery_tracking_number, return_package_delivery_tracking_number, package_delivery_vendor, transfer_site_shipping_address, attached_transfer_device_labels].hash
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
