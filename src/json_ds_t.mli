(* Auto-generated from "json_ds.atd" *)


type transaction_data_json = {
  board: string;
  kind: string;
  username: string;
  thread_name: string;
  text: string;
  thread_hash: string;
  timestamp: int
}

type transaction_json = {
  data: transaction_data_json;
  hash: string;
  timestamp: int
}

type block_json = {
  version: int;
  id: int;
  prev_hash: string;
  transactions: transaction_json list;
  timestamp: int;
  hash: string
}

type blockchain_json = { count: int; blocks: block_json list }
