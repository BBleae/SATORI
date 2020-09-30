open Roles
open Screeps

let creeps: array<string> = Js.Obj.keys(Game.creeps)

let loop = _ => {
  Belt.Array.map(creeps, creep =>
    Roles.roleRun[Game.creeps[creep]["memory"]["role"]](Game.creeps[creep])
  )
}
