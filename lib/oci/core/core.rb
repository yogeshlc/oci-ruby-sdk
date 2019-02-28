# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

module OCI
  module Core
    # Module containing models for requests made to, and responses received from,
    # OCI Core services
    module Models
    end
  end
end

# Require models
require 'oci/core/models/app_catalog_listing'
require 'oci/core/models/app_catalog_listing_resource_version'
require 'oci/core/models/app_catalog_listing_resource_version_agreements'
require 'oci/core/models/app_catalog_listing_resource_version_summary'
require 'oci/core/models/app_catalog_listing_summary'
require 'oci/core/models/app_catalog_subscription'
require 'oci/core/models/app_catalog_subscription_summary'
require 'oci/core/models/attach_boot_volume_details'
require 'oci/core/models/attach_i_scsi_volume_details'
require 'oci/core/models/attach_load_balancer_details'
require 'oci/core/models/attach_paravirtualized_volume_details'
require 'oci/core/models/attach_vnic_details'
require 'oci/core/models/attach_volume_details'
require 'oci/core/models/boot_volume'
require 'oci/core/models/boot_volume_attachment'
require 'oci/core/models/boot_volume_backup'
require 'oci/core/models/boot_volume_kms_key'
require 'oci/core/models/boot_volume_source_details'
require 'oci/core/models/boot_volume_source_from_boot_volume_backup_details'
require 'oci/core/models/boot_volume_source_from_boot_volume_details'
require 'oci/core/models/bulk_add_virtual_circuit_public_prefixes_details'
require 'oci/core/models/bulk_delete_virtual_circuit_public_prefixes_details'
require 'oci/core/models/capture_console_history_details'
require 'oci/core/models/compute_instance_details'
require 'oci/core/models/connect_local_peering_gateways_details'
require 'oci/core/models/connect_remote_peering_connections_details'
require 'oci/core/models/console_history'
require 'oci/core/models/copy_volume_backup_details'
require 'oci/core/models/cpe'
require 'oci/core/models/create_app_catalog_subscription_details'
require 'oci/core/models/create_boot_volume_backup_details'
require 'oci/core/models/create_boot_volume_details'
require 'oci/core/models/create_cpe_details'
require 'oci/core/models/create_cross_connect_details'
require 'oci/core/models/create_cross_connect_group_details'
require 'oci/core/models/create_dhcp_details'
require 'oci/core/models/create_drg_attachment_details'
require 'oci/core/models/create_drg_details'
require 'oci/core/models/create_ip_sec_connection_details'
require 'oci/core/models/create_image_details'
require 'oci/core/models/create_instance_configuration_details'
require 'oci/core/models/create_instance_console_connection_details'
require 'oci/core/models/create_instance_pool_details'
require 'oci/core/models/create_instance_pool_placement_configuration_details'
require 'oci/core/models/create_internet_gateway_details'
require 'oci/core/models/create_local_peering_gateway_details'
require 'oci/core/models/create_nat_gateway_details'
require 'oci/core/models/create_private_ip_details'
require 'oci/core/models/create_public_ip_details'
require 'oci/core/models/create_remote_peering_connection_details'
require 'oci/core/models/create_route_table_details'
require 'oci/core/models/create_security_list_details'
require 'oci/core/models/create_service_gateway_details'
require 'oci/core/models/create_subnet_details'
require 'oci/core/models/create_vcn_details'
require 'oci/core/models/create_virtual_circuit_details'
require 'oci/core/models/create_virtual_circuit_public_prefix_details'
require 'oci/core/models/create_vnic_details'
require 'oci/core/models/create_volume_backup_details'
require 'oci/core/models/create_volume_backup_policy_assignment_details'
require 'oci/core/models/create_volume_details'
require 'oci/core/models/create_volume_group_backup_details'
require 'oci/core/models/create_volume_group_details'
require 'oci/core/models/cross_connect'
require 'oci/core/models/cross_connect_group'
require 'oci/core/models/cross_connect_location'
require 'oci/core/models/cross_connect_mapping'
require 'oci/core/models/cross_connect_port_speed_shape'
require 'oci/core/models/cross_connect_status'
require 'oci/core/models/delete_virtual_circuit_public_prefix_details'
require 'oci/core/models/detach_load_balancer_details'
require 'oci/core/models/device'
require 'oci/core/models/dhcp_dns_option'
require 'oci/core/models/dhcp_option'
require 'oci/core/models/dhcp_options'
require 'oci/core/models/dhcp_search_domain_option'
require 'oci/core/models/drg'
require 'oci/core/models/drg_attachment'
require 'oci/core/models/egress_security_rule'
require 'oci/core/models/export_image_details'
require 'oci/core/models/export_image_via_object_storage_tuple_details'
require 'oci/core/models/export_image_via_object_storage_uri_details'
require 'oci/core/models/fast_connect_provider_service'
require 'oci/core/models/get_public_ip_by_ip_address_details'
require 'oci/core/models/get_public_ip_by_private_ip_id_details'
require 'oci/core/models/ip_sec_connection'
require 'oci/core/models/ip_sec_connection_device_config'
require 'oci/core/models/ip_sec_connection_device_status'
require 'oci/core/models/i_scsi_volume_attachment'
require 'oci/core/models/icmp_options'
require 'oci/core/models/image'
require 'oci/core/models/image_source_details'
require 'oci/core/models/image_source_via_object_storage_tuple_details'
require 'oci/core/models/image_source_via_object_storage_uri_details'
require 'oci/core/models/ingress_security_rule'
require 'oci/core/models/instance'
require 'oci/core/models/instance_agent_config'
require 'oci/core/models/instance_agent_features'
require 'oci/core/models/instance_configuration'
require 'oci/core/models/instance_configuration_attach_vnic_details'
require 'oci/core/models/instance_configuration_attach_volume_details'
require 'oci/core/models/instance_configuration_block_volume_details'
require 'oci/core/models/instance_configuration_create_vnic_details'
require 'oci/core/models/instance_configuration_create_volume_details'
require 'oci/core/models/instance_configuration_instance_details'
require 'oci/core/models/instance_configuration_instance_source_details'
require 'oci/core/models/instance_configuration_instance_source_via_boot_volume_details'
require 'oci/core/models/instance_configuration_instance_source_via_image_details'
require 'oci/core/models/instance_configuration_iscsi_attach_volume_details'
require 'oci/core/models/instance_configuration_launch_instance_details'
require 'oci/core/models/instance_configuration_paravirtualized_attach_volume_details'
require 'oci/core/models/instance_configuration_summary'
require 'oci/core/models/instance_configuration_volume_source_details'
require 'oci/core/models/instance_configuration_volume_source_from_volume_backup_details'
require 'oci/core/models/instance_configuration_volume_source_from_volume_details'
require 'oci/core/models/instance_console_connection'
require 'oci/core/models/instance_credentials'
require 'oci/core/models/instance_pool'
require 'oci/core/models/instance_pool_instance_load_balancer_backend'
require 'oci/core/models/instance_pool_load_balancer_attachment'
require 'oci/core/models/instance_pool_placement_configuration'
require 'oci/core/models/instance_pool_placement_secondary_vnic_subnet'
require 'oci/core/models/instance_pool_summary'
require 'oci/core/models/instance_source_details'
require 'oci/core/models/instance_source_via_boot_volume_details'
require 'oci/core/models/instance_source_via_image_details'
require 'oci/core/models/instance_summary'
require 'oci/core/models/internet_gateway'
require 'oci/core/models/launch_instance_agent_config_details'
require 'oci/core/models/launch_instance_details'
require 'oci/core/models/launch_options'
require 'oci/core/models/letter_of_authority'
require 'oci/core/models/local_peering_gateway'
require 'oci/core/models/nat_gateway'
require 'oci/core/models/paravirtualized_volume_attachment'
require 'oci/core/models/peer_region_for_remote_peering'
require 'oci/core/models/port_range'
require 'oci/core/models/private_ip'
require 'oci/core/models/public_ip'
require 'oci/core/models/remote_peering_connection'
require 'oci/core/models/route_rule'
require 'oci/core/models/route_table'
require 'oci/core/models/security_list'
require 'oci/core/models/service'
require 'oci/core/models/service_gateway'
require 'oci/core/models/service_id_request_details'
require 'oci/core/models/service_id_response_details'
require 'oci/core/models/shape'
require 'oci/core/models/subnet'
require 'oci/core/models/tcp_options'
require 'oci/core/models/tunnel_config'
require 'oci/core/models/tunnel_status'
require 'oci/core/models/udp_options'
require 'oci/core/models/update_boot_volume_backup_details'
require 'oci/core/models/update_boot_volume_details'
require 'oci/core/models/update_boot_volume_kms_key_details'
require 'oci/core/models/update_console_history_details'
require 'oci/core/models/update_cpe_details'
require 'oci/core/models/update_cross_connect_details'
require 'oci/core/models/update_cross_connect_group_details'
require 'oci/core/models/update_dhcp_details'
require 'oci/core/models/update_drg_attachment_details'
require 'oci/core/models/update_drg_details'
require 'oci/core/models/update_ip_sec_connection_details'
require 'oci/core/models/update_image_details'
require 'oci/core/models/update_instance_agent_config_details'
require 'oci/core/models/update_instance_configuration_details'
require 'oci/core/models/update_instance_details'
require 'oci/core/models/update_instance_pool_details'
require 'oci/core/models/update_instance_pool_placement_configuration_details'
require 'oci/core/models/update_internet_gateway_details'
require 'oci/core/models/update_local_peering_gateway_details'
require 'oci/core/models/update_nat_gateway_details'
require 'oci/core/models/update_private_ip_details'
require 'oci/core/models/update_public_ip_details'
require 'oci/core/models/update_remote_peering_connection_details'
require 'oci/core/models/update_route_table_details'
require 'oci/core/models/update_security_list_details'
require 'oci/core/models/update_service_gateway_details'
require 'oci/core/models/update_subnet_details'
require 'oci/core/models/update_vcn_details'
require 'oci/core/models/update_virtual_circuit_details'
require 'oci/core/models/update_vnic_details'
require 'oci/core/models/update_volume_backup_details'
require 'oci/core/models/update_volume_details'
require 'oci/core/models/update_volume_group_backup_details'
require 'oci/core/models/update_volume_group_details'
require 'oci/core/models/update_volume_kms_key_details'
require 'oci/core/models/vcn'
require 'oci/core/models/virtual_circuit'
require 'oci/core/models/virtual_circuit_bandwidth_shape'
require 'oci/core/models/virtual_circuit_public_prefix'
require 'oci/core/models/vnic'
require 'oci/core/models/vnic_attachment'
require 'oci/core/models/volume'
require 'oci/core/models/volume_attachment'
require 'oci/core/models/volume_backup'
require 'oci/core/models/volume_backup_policy'
require 'oci/core/models/volume_backup_policy_assignment'
require 'oci/core/models/volume_backup_schedule'
require 'oci/core/models/volume_group'
require 'oci/core/models/volume_group_backup'
require 'oci/core/models/volume_group_source_details'
require 'oci/core/models/volume_group_source_from_volume_group_backup_details'
require 'oci/core/models/volume_group_source_from_volume_group_details'
require 'oci/core/models/volume_group_source_from_volumes_details'
require 'oci/core/models/volume_kms_key'
require 'oci/core/models/volume_source_details'
require 'oci/core/models/volume_source_from_volume_backup_details'
require 'oci/core/models/volume_source_from_volume_details'

# Require generated clients
require 'oci/core/blockstorage_client'
require 'oci/core/blockstorage_client_composite_operations'
require 'oci/core/compute_client'
require 'oci/core/compute_client_composite_operations'
require 'oci/core/compute_management_client'
require 'oci/core/compute_management_client_composite_operations'
require 'oci/core/virtual_network_client'
require 'oci/core/virtual_network_client_composite_operations'

# Require service utilities
require 'oci/core/util'
