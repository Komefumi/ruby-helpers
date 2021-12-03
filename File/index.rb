# typed: false

module FileHelper
  # extend T::Sig
  
  # sig {params(filename: String).returns(File)}
  def read_file(filename)
    return File.open(filename)
  end
  
  module_function :read_file
end
