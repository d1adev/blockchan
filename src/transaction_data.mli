(** The type of the transaction **)
type transaction_type =
  | NEW_THREAD
  | REPLY
  | ARCHIVE

(** All the boards available for posting **)
type boards =
  | CONSUMER_TECH
  | TECH
  | RANDOM

(** The transaction_data type **)
type t

(** Create a new transaction **)
val new_transaction_data : ?username:string -> ?thread_name:string -> ?text:string -> ?thread_hash:string ->boards -> transaction_type ->  t

(** Convert a 'boards' into its string representation**)
val string_of_board : boards -> string

(** Converts a string representation into a 'boards' **)
val board_of_string : string -> boards option

(** Converts a 'transaction_type' to a string **)
val string_of_transaction_type : transaction_type -> string

(** Converts a string to a 'transaction_type' **)
val transaction_type_of_string : string -> transaction_type option

(** Prints the transaction data **)
val print_transaction_data : t -> unit
