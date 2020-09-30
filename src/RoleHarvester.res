open Screeps
open Room

let run: ('a, 'b) => 'c = creep => {
  if creep["store"]["getFreeCapacity"]() > 0 {
    let sources = find(creep["room"], %raw(`FIND_SOURCES`), None)
    if creep["harvest"](sources[0]) == %raw(`ERR_NOT_IN_RANGE`) {
      creep["moveTo"](sources[0], {"visualizePathStyle": {"stroke": "#ffaa00"}})
    }
  } else {
    let targets = find(
      creep["room"],
      %raw(`FIND_STRUCTURES`),
      Some({
        "filter": structure =>
          (structure["structureType"] == %raw(`STRUCTURE_EXTENSION`) ||
            structure["structureType"] == %raw(`STRUCTURE_SPAWN`)) &&
            structure["store"]["getFreeCapacity"](%raw(`RESOURCE_ENERGY`)) > 0,
      }),
    )
    if Js.Array.length(targets) > 0 {
      if creep["transfer"](targets[0], %raw(`RESOURCE_ENERGY`)) == %raw(`ERR_NOT_IN_RANGE`) {
        creep["moveTo"](targets[0], {"visualizePathStyle": {"stroke": "#ffffff"}})
      }
    }
  }
}
