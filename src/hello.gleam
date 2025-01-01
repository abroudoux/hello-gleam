import gleam/io

pub fn main() {
  io.debug(get_name("Hello, Gleam!"))
  io.debug(get_name("Gleam?"))
}

fn get_name(name: String) -> String {
  case name {
    "Hello, " <> name -> name
    _ -> "Unknown"
  }
}
