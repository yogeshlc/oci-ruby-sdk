# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module ContainerEngine::Models
    CLUSTER_LIFECYCLE_STATE_ENUM = [
      CLUSTER_LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      CLUSTER_LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      CLUSTER_LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      CLUSTER_LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      CLUSTER_LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      CLUSTER_LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze
    ].freeze
  end
end
