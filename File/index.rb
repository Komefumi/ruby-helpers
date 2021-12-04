# typed: false

module FileHelper
  # extend T::Sig
  # sig {params(filename: String).returns(File)}
  def read_it(filename)
    files = Dir.glob(filename) + Dir.glob("#{filename}.*")
    if files.length == 1
      return File.open(files[0])
    else
      raise "Ambiguity - More than one file matches"
      puts files
    end
  end

  def read_file(filename)
    return self.read_it(filename)
  end

  def all_lines(filename)
    return self.read_it(filename).readlines
  end

  module_function :read_file, :read_it, :all_lines
end
