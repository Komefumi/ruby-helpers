# typed: false

module FileHelper
  # extend T::Sig
  # sig {params(filename: String).returns(File)}
  def read_file(filename)
    return File.open(filename)
  end

  def read_it(filename)
    files = Dir.glob(filename) + Dir.glob("#{filename}.*")
    if files.length == 1
      return self.read_file(files[0])
    else
      raise "Ambiguity - More than one file matches"
      puts files
    end
  end
  
  module_function :read_file, :read_it
end
