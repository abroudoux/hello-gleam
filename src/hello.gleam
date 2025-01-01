import gleam/io

pub fn main() {
  let _ = io.debug(operation(1, 2, "+"))
  let _ = io.debug(operation(2, 1, "-"))
  let _ = io.debug(operation(2, 2, "*"))
  let _ = io.debug(operation(4, 2, "/"))
  let _ = io.debug(operation(4, 2, ";"))
}

fn operation(num1: Int, num2: Int, operation: String) -> Result(Int, Nil) {
  case operation {
    "+" -> Ok(num1 + num2)
    "-" -> Ok(num1 - num2)
    "*" -> Ok(num1 * num2)
    "/" -> Ok(num1 / num2)
    _ -> Error(Nil)
  }
}