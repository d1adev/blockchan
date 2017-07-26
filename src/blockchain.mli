(** Blockchain type **)
type t

(** Create a new blockchain with a genesis block **)
val new_blockchain  : unit -> t

(** Add a block to the blockchain **)
val add_block : t -> Block.t -> t option

(** Get the block list **)
val get_blocks : t -> Block.t list

(** Print the blockchain **)
val print_blockchain : t -> unit

(** Get the block count **)
val get_count : t -> int

(** Get the last block of the blockchain **)
val get_latest : t -> Block.t