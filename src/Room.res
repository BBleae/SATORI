open Screeps

let find: (room, int, 'a) => array<'b> = (room, _type, opts) => {
  switch opts {
  | None => %raw(`room.find(_type)`)
  | Some(opt) => %raw(`room.find(_type, opt)`)
  }
}
