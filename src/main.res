open Strs

let loop = _ => {
  let str = Strs.hello ++ %raw(`Game.time`)
  Js.log(str)
}
let x = 1

let y = 2
