require "ruuid/version"
require "ffi"

module Ruuid

  def self.generate
    Rust.generate_uuid
  end

  module Rust
    extend FFI::Library

    ffi_lib begin
      prefix = Gem.win_platform? ? "" : "lib"
      "#{File.expand_path("../target/release/", __dir__)}/#{prefix}ruuid.#{FFI::Platform::LIBSUFFIX}"
    end

    attach_function :generate_uuid, [], :string

  end
  private_constant :Rust
end
