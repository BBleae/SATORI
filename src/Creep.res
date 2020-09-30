open Screeps

let getAllCreeps = _ => {
  open Js.Obj
  (%raw(`Game`))["creeps"]
}

let attack: ('a, 'b) => int = (creep, target) => creep["attack"](target)

let attackController: ('a, 'b) => int = (creep, target) => creep["attackController"](target)

let build: ('a, 'b) => int = (creep, target) => creep["build"](target)

let cancelOrder: ('a, string) => int = (creep, methodName) => creep["cancelOrder"](methodName)

let claimController: ('a, 'b) => int = (creep, target) => creep["claimController"](target)

let dismantle: ('a, 'b) => int = (creep, target) => creep["dismantle"](target)

let drop: ('a, string, ~amount: int=?, unit) => int = (creep, resourceType, ~amount=?, ()) => {
  switch amount {
  | None => %raw(`creep.drop(resourceType)`)
  | Some(_amount) => %raw(`creep.drop(resourceType, _amount)`)
  }
}

let generateSafeMode: ('a, 'b) => int = (creep, controller) => creep["generateSafeMode"](controller)

let getActiveBodyparts: ('a, 'b) => int = (creep, _type) => creep["getActiveBodyparts"](_type)

let harvest: ('a, 'b) => int = (creep, target) => creep["harvest"](target)

let heal: ('a, 'b) => int = (creep, target) => creep["heal"](target)

let move: ('a, 'b) => int = (creep, direction) => creep["move"](direction)

let moveByPath: ('a, 'b) => int = (creep, path) => creep["moveByPath"](path)

let moveToObject: ('a, 'b, ~opts: 'c=?, unit) => int = (creep, target, ~opts=?, ()) => {
  switch opts {
  | None => %raw(`creep.moveTo(target)`)
  | Some(_opts) => %raw(`creep.moveTo(target, opt)`)
  }
}

let moveToVector: ('a, int, int, ~opts: 'c=?, unit) => int = (creep, x, y, ~opts=?, ()) => {
  switch opts {
  | None => %raw(`creep.moveTo(x, y)`)
  | Some(_opts) => %raw(`creep.moveTo(x, y, opt)`)
  }
}

let notifyWhenAttacked: ('a, bool) => int = (creep, enabled) => creep["notifyWhenAttacked"](enabled)

let pickup: ('a, 'b) => int = (creep, target) => creep["pickup"](target)

let pull: ('a, 'b) => int = (creep, target) => creep["pull"](target)
