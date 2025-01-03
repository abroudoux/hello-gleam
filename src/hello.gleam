import gleam/io

pub fn main() {
  io.print(hello("Hello, Gleam"))
}

fn hello(name: String) -> String {
  case name {
    "Hello, " <> name -> name
    _ -> "Unknown"
  }
}
