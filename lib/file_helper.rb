require 'yaml'

# Module for reading and writing files with library data
module FileHelper
  def self.read_library_from_file(filename)
    begin
      YAML.load_file(filename)
    rescue Errno::ENOENT => e
      e.class
    end
  end

  def self.write_library_to_file(library, filename)
    File.open(filename, 'w') { |file| file.write library.to_yaml }
  end
end
