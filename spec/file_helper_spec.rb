require 'spec_helper'
require 'file_helper.rb'

describe FileHelper do
  describe '.read_library_from_file' do
    it 'should read library from file' do
      library = FileHelper.read_library_from_file('test.data')
      expect(library.class).to eq Library
    end

    it 'should raise an exception on wrong filename' do
      expect(FileHelper.read_library_from_file('wrong')).to eq Errno::ENOENT
    end
  end
end
