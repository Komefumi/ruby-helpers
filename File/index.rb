# typed: true

module FileHelper
  extend T::Sig
  
  sig {params(filename: String).returns(File)}
  def read_file(filename)
    return File.open(filename)
  end
end
