#
# Author:: Adam Jacob (<adam@opscode.com>)
# Copyright:: Copyright (c) 2008 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "spec_helper"))

describe Chef::Resource::Package do

  before(:each) do
    @resource = Chef::Resource::Package.new("emacs")
  end  

  it "should create a new Chef::Resource::Package" do
    @resource.should be_a_kind_of(Chef::Resource)
    @resource.should be_a_kind_of(Chef::Resource::Package)
  end

  it "should set the package_name to the first argument to new" do
    @resource.package_name.should eql("emacs")
  end

  it "should accept a string for the package name" do
    @resource.package_name "something"
    @resource.package_name.should eql("something")
  end
  
  it "should accept a string for the version" do
    @resource.version "something"
    @resource.version.should eql("something")
  end
  
  it "should accept a string for the response file" do
    @resource.response_file "something"
    @resource.response_file.should eql("something")
  end

  it "should accept a string for the source" do
    @resource.source "something"
    @resource.source.should eql("something")
  end
  
end
