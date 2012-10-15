require File.expand_path('../../../spec_helper', __FILE__)

module ProjectSpecs
  describe "Xcodeproj::Project::Object::XCBuildConfiguration" do

    before do
      @configuration = @project.new(XCBuildConfiguration)
    end

    it "returns the xcconfig that this configuration is based on (baseConfigurationReference)" do
      xcconfig = @project.new_file(nil)
      @configuration.base_configuration_reference = xcconfig
      @configuration.base_configuration_reference.should.be.not.nil
    end

    it "defaults the build settings to the empty hash" do
      @configuration.build_settings.should == {}
    end

  end
end
