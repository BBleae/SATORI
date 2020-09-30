// Types

// TODO
type room
type transaction
type order
type powerCreep
type resources
type spawn
type structure

type shardLimits = Js.Dict.t<int>

type cpu = {
  limit: int,
  tickLimit: int,
  bucket: int,
  shardLimits: shardLimits,
  unlocked: bool,
  unlockedTime: int,
}

type level = {
  level: int,
  progress: int,
  progressTotal: int,
}

type bodyPart =
  | MOVE
  | WORK
  | CARRY
  | ATTACK
  | RANGED_ATTACK
  | HEAL
  | TOUGH
  | CLAIM

type creepRole =
  | Harvester
  | Upgrader
  | Builder
  | LongRangeHarvester

type roomPosition = {
  roomName: string,
  x: int,
  y: int,
}

type effect = {
  effect: int,
  level: option<int>,
  ticksRemaining: int,
}

type effects = array<effect>

type creep = {
  effects: effects,
  pos: roomPosition,
}

type owner = {username: string}

type constructionSite = {
  effects: effects,
  pos: roomPosition,
  room: room,
  id: string,
  my: bool,
  owner: owner,
  progress: int,
  progressTotal: int,
  structureType: string,
}

type constructionSites = Js.Dict.t<constructionSite>
type memory
type flag = {
  effects: effects,
  pos: roomPosition,
  room: room,
  color: int,
  memory: memory,
  name: string,
  secondaryColor: int,
}

type market = {
  credits: int,
  incomingTransactions: array<transaction>,
  outgoingTransactions: array<transaction>,
  orders: Js.Dict.t<order>,
}

type shard = {
  name: string,
  ptr: bool,
}

type game = {
  constructionSites: constructionSites,
  cpu: cpu,
  creeps: Js.Dict.t<creep>,
  flags: Js.Dict.t<flag>,
  gcl: level,
  gpl: level,
  market: market,
  powerCreeps: Js.Dict.t<powerCreep>,
  resources: resources,
  rooms: Js.Dict.t<room>,
  shard: shard,
  spawns: Js.Dict.t<spawn>,
  structures: Js.Dict.t<structure>,
  time: int,
}

// Global object
let game: game = %raw(`Game`)
