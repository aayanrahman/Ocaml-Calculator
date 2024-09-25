(* calculator.ml *)
module Calculator = struct
  (* Define the operations *)
  type operation = Add | Subtract | Multiply | Divide

  (* Function to perform the calculation *)
  let calculate op x y =
    match op with
    | Add -> x + y
    | Subtract -> x - y
    | Multiply -> x * y
    | Divide -> 
      if y = 0 then failwith "Division by zero!"
      else x / y

  (* Convert a string to an operation *)
  let operation_of_string = function
    | "+" -> Add
    | "-" -> Subtract
    | "*" -> Multiply
    | "/" -> Divide
    | _ -> failwith "Unknown operation"
end
