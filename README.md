# Usage

```ruby
require 'ruuid'
Ruuid.generate  #=> "67dd7f7a-2110-11e7-98e2-02420b8157eb"
```

# Installation

Ensure Rust is installed:

[Rust Downloads](https://www.rust-lang.org/en-US/install.html)

```
curl -sSf https://static.rust-lang.org/rustup.sh | sh
```

Add this line to your application's Gemfile:

```
gem  instal 'rust_uuid', '~> 0.1.0'

```
And then execute:

$ bundle

Or install it yourself as:

$ gem install rust_uuid

> MAC USERS: At the moment Mac users need to install the extension manualy.
> Go to the gem directory and run cargo build --release .
> There is an issue opened for this and I'm looking for people who have Macs to help on this.
