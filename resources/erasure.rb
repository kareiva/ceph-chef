#
# Copyright 2015, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

provides :ceph_chef_erasure

actions :set, :delete
default_action :set

attribute :name, :kind_of => String, :name_attribute => true

# Group of create and (maybe) set actions:

# The plugin for erasure coding
attribute :plugin, :kind_of => String, :default => 'jerasure'
# The directory where the plugin is found
attribute :directory, :kind_of => String, :default => '/usr/lib/ceph/erasure-code'
# Force to override existing profile
attribute :force, :kind_of => [ TrueClass, FalseClass ], :default => false

# Group of set actions:

# Set the key_value type
attribute :key_value, :kind_of => Hash, :default => {}

attr_accessor :exists
