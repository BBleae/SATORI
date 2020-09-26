let OK = 0
let ERR_NOT_OWNER = -1
let ERR_NO_PATH = -2
let ERR_NAME_EXISTS = -3
let ERR_BUSY = -4
let ERR_NOT_FOUND = -5
let ERR_NOT_ENOUGH_ENERGY = -6
let ERR_NOT_ENOUGH_RESOURCES = -6
let ERR_INVALID_TARGET = -7
let ERR_FULL = -8
let ERR_NOT_IN_RANGE = -9
let ERR_INVALID_ARGS = -10
let ERR_TIRED = -11
let ERR_NO_BODYPART = -12
let ERR_NOT_ENOUGH_EXTENSIONS = -6
let ERR_RCL_NOT_ENOUGH = -14
let ERR_GCL_NOT_ENOUGH = -15
let FIND_EXIT_TOP = 1
let FIND_EXIT_RIGHT = 3
let FIND_EXIT_BOTTOM = 5
let FIND_EXIT_LEFT = 7
let FIND_EXIT = 10
let FIND_CREEPS = 101
let FIND_MY_CREEPS = 102
let FIND_HOSTILE_CREEPS = 103
let FIND_SOURCES_ACTIVE = 104
let FIND_SOURCES = 105
let FIND_DROPPED_RESOURCES = 106
let FIND_STRUCTURES = 107
let FIND_MY_STRUCTURES = 108
let FIND_HOSTILE_STRUCTURES = 109
let FIND_FLAGS = 110
let FIND_CONSTRUCTION_SITES = 111
let FIND_MY_SPAWNS = 112
let FIND_HOSTILE_SPAWNS = 113
let FIND_MY_CONSTRUCTION_SITES = 114
let FIND_HOSTILE_CONSTRUCTION_SITES = 115
let FIND_MINERALS = 116
let FIND_NUKES = 117
let FIND_TOMBSTONES = 118
let FIND_POWER_CREEPS = 119
let FIND_MY_POWER_CREEPS = 120
let FIND_HOSTILE_POWER_CREEPS = 121
let FIND_DEPOSITS = 122
let FIND_RUINS = 123
let TOP = 1
let TOP_RIGHT = 2
let RIGHT = 3
let BOTTOM_RIGHT = 4
let BOTTOM = 5
let BOTTOM_LEFT = 6
let LEFT = 7
let TOP_LEFT = 8
let COLOR_RED = 1
let COLOR_PURPLE = 2
let COLOR_BLUE = 3
let COLOR_CYAN = 4
let COLOR_GREEN = 5
let COLOR_YELLOW = 6
let COLOR_ORANGE = 7
let COLOR_BROWN = 8
let COLOR_GREY = 9
let COLOR_WHITE = 10
let LOOK_CREEPS = "creep"
let LOOK_ENERGY = "energy"
let LOOK_RESOURCES = "resource"
let LOOK_SOURCES = "source"
let LOOK_MINERALS = "mineral"
let LOOK_DEPOSITS = "deposit"
let LOOK_STRUCTURES = "structure"
let LOOK_FLAGS = "flag"
let LOOK_CONSTRUCTION_SITES = "constructionSite"
let LOOK_NUKES = "nuke"
let LOOK_TERRAIN = "terrain"
let LOOK_TOMBSTONES = "tombstone"
let LOOK_POWER_CREEPS = "powerCreep"
let LOOK_RUINS = "ruin"

let OBSTACLE_OBJECT_TYPES = (
  "spawn",
  "creep",
  "powerCreep",
  "source",
  "mineral",
  "deposit",
  "controller",
  "constructedWall",
  "extension",
  "link",
  "storage",
  "tower",
  "observer",
  "powerSpawn",
  "powerBank",
  "lab",
  "terminal",
  "nuker",
  "factory",
  "invaderCore",
)

let MOVE = "move"
let WORK = "work"
let CARRY = "carry"
let ATTACK = "attack"
let RANGED_ATTACK = "ranged_attack"
let TOUGH = "tough"
let HEAL = "heal"
let CLAIM = "claim"

let BODYPART_COST = {
  "move": 50,
  "work": 100,
  "attack": 80,
  "carry": 50,
  "heal": 250,
  "ranged_attack": 150,
  "tough": 10,
  "claim": 600,
}

let WORLD_WIDTH = 202
let WORLD_HEIGHT = 202

let CREEP_LIFE_TIME = 1500
let CREEP_CLAIM_LIFE_TIME = 600
let CREEP_CORPSE_RATE = 0.2
let CREEP_PART_MAX_ENERGY = 125

let CARRY_CAPACITY = 50
let HARVEST_POWER = 2
let HARVEST_MINERAL_POWER = 1
let HARVEST_DEPOSIT_POWER = 1
let REPAIR_POWER = 100
let DISMANTLE_POWER = 50
let BUILD_POWER = 5
let ATTACK_POWER = 30
let UPGRADE_CONTROLLER_POWER = 1
let RANGED_ATTACK_POWER = 10
let HEAL_POWER = 12
let RANGED_HEAL_POWER = 4
let REPAIR_COST = 0.01
let DISMANTLE_COST = 0.005

let RAMPART_DECAY_AMOUNT = 300
let RAMPART_DECAY_TIME = 100
let RAMPART_HITS = 1
let RAMPART_HITS_MAX = level => {
  if level == 2 {
    300000
  } else if level == 3 {
    1000000
  } else if level == 4 {
    3000000
  } else if level == 5 {
    10000000
  } else if level == 6 {
    30000000
  } else if level == 7 {
    100000000
  } else if level == 8 {
    300000000
  } else {
    0
  }
}

let ENERGY_REGEN_TIME = 300
let ENERGY_DECAY = 1000

let SPAWN_HITS = 5000
let SPAWN_ENERGY_START = 300
let SPAWN_ENERGY_CAPACITY = 300
let CREEP_SPAWN_TIME = 3
let SPAWN_RENEW_RATIO = 1.2

let SOURCE_ENERGY_CAPACITY = 3000
let SOURCE_ENERGY_NEUTRAL_CAPACITY = 1500
let SOURCE_ENERGY_KEEPER_CAPACITY = 4000

let WALL_HITS = 1
let WALL_HITS_MAX = 300000000

let EXTENSION_HITS = 1000
let EXTENSION_ENERGY_CAPACITY = level => level == 7 ? 100 : level == 8 ? 200 : 50

let ROAD_HITS = 5000
let ROAD_WEAROUT = 1
let ROAD_WEAROUT_POWER_CREEP = 100
let ROAD_DECAY_AMOUNT = 100
let ROAD_DECAY_TIME = 1000

let LINK_HITS = 1000
let LINK_HITS_MAX = 1000
let LINK_CAPACITY = 800
let LINK_COOLDOWN = 1
let LINK_LOSS_RATIO = 0.03

let STORAGE_CAPACITY = 1000000
let STORAGE_HITS = 10000

let STRUCTURE_SPAWN = "spawn"
let STRUCTURE_EXTENSION = "extension"
let STRUCTURE_ROAD = "road"
let STRUCTURE_WALL = "constructedWall"
let STRUCTURE_RAMPART = "rampart"
let STRUCTURE_KEEPER_LAIR = "keeperLair"
let STRUCTURE_PORTAL = "portal"
let STRUCTURE_CONTROLLER = "controller"
let STRUCTURE_LINK = "link"
let STRUCTURE_STORAGE = "storage"
let STRUCTURE_TOWER = "tower"
let STRUCTURE_OBSERVER = "observer"
let STRUCTURE_POWER_BANK = "powerBank"
let STRUCTURE_POWER_SPAWN = "powerSpawn"
let STRUCTURE_EXTRACTOR = "extractor"
let STRUCTURE_LAB = "lab"
let STRUCTURE_TERMINAL = "terminal"
let STRUCTURE_CONTAINER = "container"
let STRUCTURE_NUKER = "nuker"
let STRUCTURE_FACTORY = "factory"
let STRUCTURE_INVADER_CORE = "invaderCore"

let CONSTRUCTION_COST = {
  "spawn": 15000,
  "extension": 3000,
  "road": 300,
  "constructedWall": 1,
  "rampart": 1,
  "link": 5000,
  "storage": 30000,
  "tower": 5000,
  "observer": 8000,
  "powerSpawn": 100000,
  "extractor": 5000,
  "lab": 50000,
  "terminal": 100000,
  "container": 5000,
  "nuker": 100000,
  "factory": 100000,
}

let CONSTRUCTION_COST_ROAD_SWAMP_RATIO = 5
let CONSTRUCTION_COST_ROAD_WALL_RATIO = 150

let CONTROLLER_LEVELS = (0, 200, 45000, 135000, 405000, 1215000, 3645000, 10935000)

let CONTROLLER_STRUCTURES = {
  "spawn": (0, 1, 1, 1, 1, 1, 1, 2, 3),
  "extension": (0, 0, 5, 10, 20, 30, 40, 50, 60),
  "link": (0, 0, 0, 0, 0, 2, 3, 4, 6),
  "road": (2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500, 2500),
  "constructedWall": (0, 2500, 2500, 2500, 2500, 2500, 2500, 2500),
  "rampart": (0, 2500, 2500, 2500, 2500, 2500, 2500, 2500),
  "storage": (0, 0, 0, 0, 1, 1, 1, 1, 1),
  "tower": (0, 0, 0, 1, 1, 2, 2, 3, 6),
  "observer": (0, 0, 0, 0, 0, 0, 0, 0, 1),
  "powerSpawn": (0, 0, 0, 0, 0, 0, 0, 0, 1),
  "extractor": (0, 0, 0, 0, 0, 0, 1, 1, 1),
  "terminal": (0, 0, 0, 0, 0, 0, 1, 1, 1),
  "lab": (0, 0, 0, 0, 0, 0, 3, 6, 10),
  "container": (0, 5, 5, 5, 5, 5, 5, 5, 5, 5),
  "nuker": (0, 0, 0, 0, 0, 0, 0, 0, 1),
  "factory": (0, 0, 0, 0, 0, 0, 0, 1, 1),
}

let CONTROLLER_DOWNGRADE = (0, 20000, 10000, 20000, 40000, 80000, 120000, 150000, 200000)
let CONTROLLER_DOWNGRADE_RESTORE = 100
let CONTROLLER_DOWNGRADE_SAFEMODE_THRESHOLD = 5000
let CONTROLLER_CLAIM_DOWNGRADE = 300
let CONTROLLER_RESERVE = 1
let CONTROLLER_RESERVE_MAX = 5000
let CONTROLLER_MAX_UPGRADE_PER_TICK = 15
let CONTROLLER_ATTACK_BLOCKED_UPGRADE = 1000
let CONTROLLER_NUKE_BLOCKED_UPGRADE = 200

let SAFE_MODE_DURATION = 20000
let SAFE_MODE_COOLDOWN = 50000
let SAFE_MODE_COST = 1000

let TOWER_HITS = 3000
let TOWER_CAPACITY = 1000
let TOWER_ENERGY_COST = 10
let TOWER_POWER_ATTACK = 600
let TOWER_POWER_HEAL = 400
let TOWER_POWER_REPAIR = 800
let TOWER_OPTIMAL_RANGE = 5
let TOWER_FALLOFF_RANGE = 20
let TOWER_FALLOFF = 0.75

let OBSERVER_HITS = 500
let OBSERVER_RANGE = 10

let POWER_BANK_HITS = 2000000
let POWER_BANK_CAPACITY_MAX = 5000
let POWER_BANK_CAPACITY_MIN = 500
let POWER_BANK_CAPACITY_CRIT = 0.3
let POWER_BANK_DECAY = 5000
let POWER_BANK_HIT_BACK = 0.5

let POWER_SPAWN_HITS = 5000
let POWER_SPAWN_ENERGY_CAPACITY = 5000
let POWER_SPAWN_POWER_CAPACITY = 100
let POWER_SPAWN_ENERGY_RATIO = 50

let EXTRACTOR_HITS = 500
let EXTRACTOR_COOLDOWN = 5

let LAB_HITS = 500
let LAB_MINERAL_CAPACITY = 3000
let LAB_ENERGY_CAPACITY = 2000
let LAB_BOOST_ENERGY = 20
let LAB_BOOST_MINERAL = 30
let LAB_COOLDOWN = 10
let LAB_REACTION_AMOUNT = 5
let LAB_UNBOOST_ENERGY = 0
let LAB_UNBOOST_MINERAL = 15

let GCL_POW = 2.4
let GCL_MULTIPLY = 1000000
let GCL_NOVICE = 3

let TERRAIN_MASK_WALL = 1
let TERRAIN_MASK_SWAMP = 2
let TERRAIN_MASK_LAVA = 4

let MAX_CONSTRUCTION_SITES = 100
let MAX_CREEP_SIZE = 50

let MINERAL_REGEN_TIME = 50000
let MINERAL_MIN_AMOUNT = {
  "H": 35000,
  "O": 35000,
  "L": 35000,
  "K": 35000,
  "Z": 35000,
  "U": 35000,
  "X": 35000,
}
let MINERAL_RANDOM_FACTOR = 2

let MINERAL_DENSITY = (0, 15000, 35000, 70000, 100000)

let MINERAL_DENSITY_PROBABILITY = (0.0, 0.1, 0.5, 0.9, 1.0)

let MINERAL_DENSITY_CHANGE = 0.05

let DENSITY_LOW = 1
let DENSITY_MODERATE = 2
let DENSITY_HIGH = 3
let DENSITY_ULTRA = 4

let DEPOSIT_EXHAUST_MULTIPLY = 0.001
let DEPOSIT_EXHAUST_POW = 1.2
let DEPOSIT_DECAY_TIME = 50000

let TERMINAL_CAPACITY = 300000
let TERMINAL_HITS = 3000
let TERMINAL_SEND_COST = 0.1
let TERMINAL_MIN_SEND = 100
let TERMINAL_COOLDOWN = 10

let CONTAINER_HITS = 250000
let CONTAINER_CAPACITY = 2000
let CONTAINER_DECAY = 5000
let CONTAINER_DECAY_TIME = 100
let CONTAINER_DECAY_TIME_OWNED = 500

let NUKER_HITS = 1000
let NUKER_COOLDOWN = 100000
let NUKER_ENERGY_CAPACITY = 300000
let NUKER_GHODIUM_CAPACITY = 5000
let NUKE_LAND_TIME = 50000
let NUKE_RANGE = 10
let NUKE_DAMAGE = (10000000, 0, 5000000)

let FACTORY_HITS = 1000
let FACTORY_CAPACITY = 50000

let TOMBSTONE_DECAY_PER_PART = 5
let TOMBSTONE_DECAY_POWER_CREEP = 500

let RUIN_DECAY = 500
let RUIN_DECAY_STRUCTURES = {
  "powerBank": 10,
}

let PORTAL_DECAY = 30000

let ORDER_SELL = "sell"
let ORDER_BUY = "buy"

let MARKET_FEE = 0.05

let MARKET_MAX_ORDERS = 300
let MARKET_ORDER_LIFE_TIME = 1000 * 60 * 60 * 24 * 30

let FLAGS_LIMIT = 10000

let SUBSCRIPTION_TOKEN = "token"
let CPU_UNLOCK = "cpuUnlock"
let PIXEL = "pixel"
let ACCESS_KEY = "accessKey"

let PIXEL_CPU_COST = 5000

let RESOURCE_ENERGY = "energy"
let RESOURCE_POWER = "power"

let RESOURCE_HYDROGEN = "H"
let RESOURCE_OXYGEN = "O"
let RESOURCE_UTRIUM = "U"
let RESOURCE_LEMERGIUM = "L"
let RESOURCE_KEANIUM = "K"
let RESOURCE_ZYNTHIUM = "Z"
let RESOURCE_CATALYST = "X"
let RESOURCE_GHODIUM = "G"

let RESOURCE_SILICON = silicon'
let RESOURCE_METAL = metal'
let RESOURCE_BIOMASS = biomass'
let RESOURCE_MIST = mist'

let RESOURCE_HYDROXIDE = "OH"
let RESOURCE_ZYNTHIUM_KEANITE = "ZK"
let RESOURCE_UTRIUM_LEMERGITE = "UL"

let RESOURCE_UTRIUM_HYDRIDE = "UH"
let RESOURCE_UTRIUM_OXIDE = "UO"
let RESOURCE_KEANIUM_HYDRIDE = "KH"
let RESOURCE_KEANIUM_OXIDE = "KO"
let RESOURCE_LEMERGIUM_HYDRIDE = "LH"
let RESOURCE_LEMERGIUM_OXIDE = "LO"
let RESOURCE_ZYNTHIUM_HYDRIDE = "ZH"
let RESOURCE_ZYNTHIUM_OXIDE = "ZO"
let RESOURCE_GHODIUM_HYDRIDE = "GH"
let RESOURCE_GHODIUM_OXIDE = "GO"

let RESOURCE_UTRIUM_ACID = "UH2O"
let RESOURCE_UTRIUM_ALKALIDE = "UHO2"
let RESOURCE_KEANIUM_ACID = "KH2O"
let RESOURCE_KEANIUM_ALKALIDE = "KHO2"
let RESOURCE_LEMERGIUM_ACID = "LH2O"
let RESOURCE_LEMERGIUM_ALKALIDE = "LHO2"
let RESOURCE_ZYNTHIUM_ACID = "ZH2O"
let RESOURCE_ZYNTHIUM_ALKALIDE = "ZHO2"
let RESOURCE_GHODIUM_ACID = "GH2O"
let RESOURCE_GHODIUM_ALKALIDE = "GHO2"

let RESOURCE_CATALYZED_UTRIUM_ACID = "XUH2O"
let RESOURCE_CATALYZED_UTRIUM_ALKALIDE = "XUHO2"
let RESOURCE_CATALYZED_KEANIUM_ACID = "XKH2O"
let RESOURCE_CATALYZED_KEANIUM_ALKALIDE = "XKHO2"
let RESOURCE_CATALYZED_LEMERGIUM_ACID = "XLH2O"
let RESOURCE_CATALYZED_LEMERGIUM_ALKALIDE = "XLHO2"
let RESOURCE_CATALYZED_ZYNTHIUM_ACID = "XZH2O"
let RESOURCE_CATALYZED_ZYNTHIUM_ALKALIDE = "XZHO2"
let RESOURCE_CATALYZED_GHODIUM_ACID = "XGH2O"
let RESOURCE_CATALYZED_GHODIUM_ALKALIDE = "XGHO2"

let RESOURCE_OPS = "ops"

let RESOURCE_UTRIUM_BAR = utrium_bar'
let RESOURCE_LEMERGIUM_BAR = lemergium_bar'
let RESOURCE_ZYNTHIUM_BAR = zynthium_bar'
let RESOURCE_KEANIUM_BAR = keanium_bar'
let RESOURCE_GHODIUM_MELT = ghodium_melt'
let RESOURCE_OXIDANT = oxidant'
let RESOURCE_REDUCTANT = reductant'
let RESOURCE_PURIFIER = purifier'
let RESOURCE_BATTERY = battery'

let RESOURCE_COMPOSITE = composite'
let RESOURCE_CRYSTAL = crystal'
let RESOURCE_LIQUID = liquid'

let RESOURCE_WIRE = wire'
let RESOURCE_SWITCH = switch'
let RESOURCE_TRANSISTOR = transistor'
let RESOURCE_MICROCHIP = microchip'
let RESOURCE_CIRCUIT = circuit'
let RESOURCE_DEVICE = device'

let RESOURCE_CELL = cell'
let RESOURCE_PHLEGM = phlegm'
let RESOURCE_TISSUE = tissue'
let RESOURCE_MUSCLE = muscle'
let RESOURCE_ORGANOID = organoid'
let RESOURCE_ORGANISM = organism'

let RESOURCE_ALLOY = alloy'
let RESOURCE_TUBE = tube'
let RESOURCE_FIXTURES = fixtures'
let RESOURCE_FRAME = frame'
let RESOURCE_HYDRAULICS = hydraulics'
let RESOURCE_MACHINE = machine'

let RESOURCE_CONDENSATE = condensate'
let RESOURCE_CONCENTRATE = concentrate'
let RESOURCE_EXTRACT = extract'
let RESOURCE_SPIRIT = spirit'
let RESOURCE_EMANATION = emanation'
let RESOURCE_ESSENCE = essence'

let REACTIONS = {
  "H": {
    "O": "OH",
    "L": "LH",
    "K": "KH",
    "U": "UH",
    "Z": "ZH",
    "G": "GH",
  },
  "O": {
    "H": "OH",
    "L": "LO",
    "K": "KO",
    "U": "UO",
    "Z": "ZO",
    "G": "GO",
  },
  "Z": {
    "K": "ZK",
    "H": "ZH",
    "O": "ZO",
  },
  "L": {
    "U": "UL",
    "H": "LH",
    "O": "LO",
  },
  "K": {
    "Z": "ZK",
    "H": "KH",
    "O": "KO",
  },
  "G": {
    "H": "GH",
    "O": "GO",
  },
  "U": {
    "L": "UL",
    "H": "UH",
    "O": "UO",
  },
  "OH": {
    "UH": "UH2O",
    "UO": "UHO2",
    "ZH": "ZH2O",
    "ZO": "ZHO2",
    "KH": "KH2O",
    "KO": "KHO2",
    "LH": "LH2O",
    "LO": "LHO2",
    "GH": "GH2O",
    "GO": "GHO2",
  },
  "X": {
    "UH2O": "XUH2O",
    "UHO2": "XUHO2",
    "LH2O": "XLH2O",
    "LHO2": "XLHO2",
    "KH2O": "XKH2O",
    "KHO2": "XKHO2",
    "ZH2O": "XZH2O",
    "ZHO2": "XZHO2",
    "GH2O": "XGH2O",
    "GHO2": "XGHO2",
  },
  "ZK": {
    "UL": "G",
  },
  "UL": {
    "ZK": "G",
  },
  "LH": {
    "OH": "LH2O",
  },
  "ZH": {
    "OH": "ZH2O",
  },
  "GH": {
    "OH": "GH2O",
  },
  "KH": {
    "OH": "KH2O",
  },
  "UH": {
    "OH": "UH2O",
  },
  "LO": {
    "OH": "LHO2",
  },
  "ZO": {
    "OH": "ZHO2",
  },
  "KO": {
    "OH": "KHO2",
  },
  "UO": {
    "OH": "UHO2",
  },
  "GO": {
    "OH": "GHO2",
  },
  "LH2O": {
    "X": "XLH2O",
  },
  "KH2O": {
    "X": "XKH2O",
  },
  "ZH2O": {
    "X": "XZH2O",
  },
  "UH2O": {
    "X": "XUH2O",
  },
  "GH2O": {
    "X": "XGH2O",
  },
  "LHO2": {
    "X": "XLHO2",
  },
  "UHO2": {
    "X": "XUHO2",
  },
  "KHO2": {
    "X": "XKHO2",
  },
  "ZHO2": {
    "X": "XZHO2",
  },
  "GHO2": {
    "X": "XGHO2",
  },
}

let REACTIONS = {
  "H": {
    "O": "OH",
    "L": "LH",
    "K": "KH",
    "U": "UH",
    "Z": "ZH",
    "G": "GH",
  },
  "O": {
    "H": "OH",
    "L": "LO",
    "K": "KO",
    "U": "UO",
    "Z": "ZO",
    "G": "GO",
  },
  "Z": {
    "K": "ZK",
    "H": "ZH",
    "O": "ZO",
  },
  "L": {
    "U": "UL",
    "H": "LH",
    "O": "LO",
  },
  "K": {
    "Z": "ZK",
    "H": "KH",
    "O": "KO",
  },
  "G": {
    "H": "GH",
    "O": "GO",
  },
  "U": {
    "L": "UL",
    "H": "UH",
    "O": "UO",
  },
  "OH": {
    "UH": "UH2O",
    "UO": "UHO2",
    "ZH": "ZH2O",
    "ZO": "ZHO2",
    "KH": "KH2O",
    "KO": "KHO2",
    "LH": "LH2O",
    "LO": "LHO2",
    "GH": "GH2O",
    "GO": "GHO2",
  },
  "X": {
    "UH2O": "XUH2O",
    "UHO2": "XUHO2",
    "LH2O": "XLH2O",
    "LHO2": "XLHO2",
    "KH2O": "XKH2O",
    "KHO2": "XKHO2",
    "ZH2O": "XZH2O",
    "ZHO2": "XZHO2",
    "GH2O": "XGH2O",
    "GHO2": "XGHO2",
  },
  "ZK": {
    "UL": "G",
  },
  "UL": {
    "ZK": "G",
  },
  "LH": {
    "OH": "LH2O",
  },
  "ZH": {
    "OH": "ZH2O",
  },
  "GH": {
    "OH": "GH2O",
  },
  "KH": {
    "OH": "KH2O",
  },
  "UH": {
    "OH": "UH2O",
  },
  "LO": {
    "OH": "LHO2",
  },
  "ZO": {
    "OH": "ZHO2",
  },
  "KO": {
    "OH": "KHO2",
  },
  "UO": {
    "OH": "UHO2",
  },
  "GO": {
    "OH": "GHO2",
  },
  "LH2O": {
    "X": "XLH2O",
  },
  "KH2O": {
    "X": "XKH2O",
  },
  "ZH2O": {
    "X": "XZH2O",
  },
  "UH2O": {
    "X": "XUH2O",
  },
  "GH2O": {
    "X": "XGH2O",
  },
  "LHO2": {
    "X": "XLHO2",
  },
  "UHO2": {
    "X": "XUHO2",
  },
  "KHO2": {
    "X": "XKHO2",
  },
  "ZHO2": {
    "X": "XZHO2",
  },
  "GHO2": {
    "X": "XGHO2",
  },
}

let BOOSTS = {
  "work": {
    "UO": {
      "harvest": 3,
    },
    "UHO2": {
      "harvest": 5,
    },
    "XUHO2": {
      "harvest": 7,
    },
    "LH": {
      "build": 1.5,
      "repair": 1.5,
    },
    "LH2O": {
      "build": 1.8,
      "repair": 1.8,
    },
    "XLH2O": {
      "build": 2,
      "repair": 2,
    },
    "ZH": {
      "dismantle": 2,
    },
    "ZH2O": {
      "dismantle": 3,
    },
    "XZH2O": {
      "dismantle": 4,
    },
    "GH": {
      "upgradeController": 1.5,
    },
    "GH2O": {
      "upgradeController": 1.8,
    },
    "XGH2O": {
      "upgradeController": 2,
    },
  },
  "attack": {
    "UH": {
      "attack": 2,
    },
    "UH2O": {
      "attack": 3,
    },
    "XUH2O": {
      "attack": 4,
    },
  },
  "ranged_attack": {
    "KO": {
      "rangedAttack": 2,
      "rangedMassAttack": 2,
    },
    "KHO2": {
      "rangedAttack": 3,
      "rangedMassAttack": 3,
    },
    "XKHO2": {
      "rangedAttack": 4,
      "rangedMassAttack": 4,
    },
  },
  "heal": {
    "LO": {
      "heal": 2,
      "rangedHeal": 2,
    },
    "LHO2": {
      "heal": 3,
      "rangedHeal": 3,
    },
    "XLHO2": {
      "heal": 4,
      "rangedHeal": 4,
    },
  },
  "carry": {
    "KH": {
      "capacity": 2,
    },
    "KH2O": {
      "capacity": 3,
    },
    "XKH2O": {
      "capacity": 4,
    },
  },
  "move": {
    "ZO": {
      "fatigue": 2,
    },
    "ZHO2": {
      "fatigue": 3,
    },
    "XZHO2": {
      "fatigue": 4,
    },
  },
  "tough": {
    "GO": {
      "damage": 7,
    },
    "GHO2": {
      "damage": 5,
    },
    "XGHO2": {
      "damage": 3,
    },
  },
}

let REACTION_TIME = {
  "OH": 20,
  "ZK": 5,
  "UL": 5,
  "G": 5,
  "UH": 10,
  "UH2O": 5,
  "XUH2O": 60,
  "UO": 10,
  "UHO2": 5,
  "XUHO2": 60,
  "KH": 10,
  "KH2O": 5,
  "XKH2O": 60,
  "KO": 10,
  "KHO2": 5,
  "XKHO2": 60,
  "LH": 15,
  "LH2O": 10,
  "XLH2O": 65,
  "LO": 10,
  "LHO2": 5,
  "XLHO2": 60,
  "ZH": 20,
  "ZH2O": 40,
  "XZH2O": 160,
  "ZO": 10,
  "ZHO2": 5,
  "XZHO2": 60,
  "GH": 10,
  "GH2O": 15,
  "XGH2O": 80,
  "GO": 10,
  "GHO2": 30,
  "XGHO2": 150,
}

let PORTAL_UNSTABLE = 10 * 24 * 3600 * 1000
let PORTAL_MIN_TIMEOUT = 12 * 24 * 3600 * 1000
let PORTAL_MAX_TIMEOUT = 22 * 24 * 3600 * 1000

let POWER_BANK_RESPAWN_TIME = 50000

let INVADERS_ENERGY_GOAL = 100000

let SYSTEM_USERNAME = "Screeps"
let SIGN_NOVICE_AREA = "A new Novice or Respawn Area is being planned somewhere in this sector. Please make sure all important rooms are reserved."
let SIGN_RESPAWN_AREA = "A new Novice or Respawn Area is being planned somewhere in this sector. Please make sure all important rooms are reserved."
let SIGN_PLANNED_AREA = "A new Novice or Respawn Area is being planned somewhere in this sector. Please make sure all important rooms are reserved."

let EVENT_ATTACK = 1
let EVENT_OBJECT_DESTROYED = 2
let EVENT_ATTACK_CONTROLLER = 3
let EVENT_BUILD = 4
let EVENT_HARVEST = 5
let EVENT_HEAL = 6
let EVENT_REPAIR = 7
let EVENT_RESERVE_CONTROLLER = 8
let EVENT_UPGRADE_CONTROLLER = 9
let EVENT_EXIT = 10
let EVENT_POWER = 11
let EVENT_TRANSFER = 12

let EVENT_ATTACK_TYPE_MELEE = 1
let EVENT_ATTACK_TYPE_RANGED = 2
let EVENT_ATTACK_TYPE_RANGED_MASS = 3
let EVENT_ATTACK_TYPE_DISMANTLE = 4
let EVENT_ATTACK_TYPE_HIT_BACK = 5
let EVENT_ATTACK_TYPE_NUKE = 6

let EVENT_HEAL_TYPE_MELEE = 1
let EVENT_HEAL_TYPE_RANGED = 2

let POWER_LEVEL_MULTIPLY = 1000
let POWER_LEVEL_POW = 2
let POWER_CREEP_SPAWN_COOLDOWN = 8 * 3600 * 1000
let POWER_CREEP_DELETE_COOLDOWN = 24 * 3600 * 1000
let POWER_CREEP_MAX_LEVEL = 25
let POWER_CREEP_LIFE_TIME = 5000

let POWER_CLASS = {
  "OPERATOR": "operator",
}

let PWR_GENERATE_OPS = 1
let PWR_OPERATE_SPAWN = 2
let PWR_OPERATE_TOWER = 3
let PWR_OPERATE_STORAGE = 4
let PWR_OPERATE_LAB = 5
let PWR_OPERATE_EXTENSION = 6
let PWR_OPERATE_OBSERVER = 7
let PWR_OPERATE_TERMINAL = 8
let PWR_DISRUPT_SPAWN = 9
let PWR_DISRUPT_TOWER = 10
let PWR_DISRUPT_SOURCE = 11
let PWR_SHIELD = 12
let PWR_REGEN_SOURCE = 13
let PWR_REGEN_MINERAL = 14
let PWR_DISRUPT_TERMINAL = 15
let PWR_OPERATE_POWER = 16
let PWR_FORTIFY = 17
let PWR_OPERATE_CONTROLLER = 18
let PWR_OPERATE_FACTORY = 19

let EFFECT_INVULNERABILITY = 1001
let EFFECT_COLLAPSE_TIMER = 1002

let INVADER_CORE_HITS = 100000
let INVADER_CORE_CREEP_SPAWN_TIME = (0, 0, 6, 3, 2, 1)
let INVADER_CORE_EXPAND_TIME = (0, 4000, 3500, 3000, 2500, 2000)
let INVADER_CORE_CONTROLLER_POWER = 2
let INVADER_CORE_CONTROLLER_DOWNGRADE = 5000
let STRONGHOLD_RAMPART_HITS = (0, 100000, 200000, 500000, 1000000, 2000000)
let STRONGHOLD_DECAY_TICKS = 75000

let BODYPARTS_ALL = (MOVE, WORK, CARRY, ATTACK, RANGED_ATTACK, TOUGH, HEAL, CLAIM)

let RESOURCES_ALL = (
  RESOURCE_ENERGY,
  RESOURCE_POWER,
  RESOURCE_HYDROGEN,
  RESOURCE_OXYGEN,
  RESOURCE_UTRIUM,
  RESOURCE_KEANIUM,
  RESOURCE_LEMERGIUM,
  RESOURCE_ZYNTHIUM,
  RESOURCE_CATALYST,
  RESOURCE_GHODIUM,
  RESOURCE_HYDROXIDE,
  RESOURCE_ZYNTHIUM_KEANITE,
  RESOURCE_UTRIUM_LEMERGITE,
  RESOURCE_UTRIUM_HYDRIDE,
  RESOURCE_UTRIUM_OXIDE,
  RESOURCE_KEANIUM_HYDRIDE,
  RESOURCE_KEANIUM_OXIDE,
  RESOURCE_LEMERGIUM_HYDRIDE,
  RESOURCE_LEMERGIUM_OXIDE,
  RESOURCE_ZYNTHIUM_HYDRIDE,
  RESOURCE_ZYNTHIUM_OXIDE,
  RESOURCE_GHODIUM_HYDRIDE,
  RESOURCE_GHODIUM_OXIDE,
  RESOURCE_UTRIUM_ACID,
  RESOURCE_UTRIUM_ALKALIDE,
  RESOURCE_KEANIUM_ACID,
  RESOURCE_KEANIUM_ALKALIDE,
  RESOURCE_LEMERGIUM_ACID,
  RESOURCE_LEMERGIUM_ALKALIDE,
  RESOURCE_ZYNTHIUM_ACID,
  RESOURCE_ZYNTHIUM_ALKALIDE,
  RESOURCE_GHODIUM_ACID,
  RESOURCE_GHODIUM_ALKALIDE,
  RESOURCE_CATALYZED_UTRIUM_ACID,
  RESOURCE_CATALYZED_UTRIUM_ALKALIDE,
  RESOURCE_CATALYZED_KEANIUM_ACID,
  RESOURCE_CATALYZED_KEANIUM_ALKALIDE,
  RESOURCE_CATALYZED_LEMERGIUM_ACID,
  RESOURCE_CATALYZED_LEMERGIUM_ALKALIDE,
  RESOURCE_CATALYZED_ZYNTHIUM_ACID,
  RESOURCE_CATALYZED_ZYNTHIUM_ALKALIDE,
  RESOURCE_CATALYZED_GHODIUM_ACID,
  RESOURCE_CATALYZED_GHODIUM_ALKALIDE,
  RESOURCE_OPS,
  RESOURCE_SILICON,
  RESOURCE_METAL,
  RESOURCE_BIOMASS,
  RESOURCE_MIST,
  RESOURCE_UTRIUM_BAR,
  RESOURCE_LEMERGIUM_BAR,
  RESOURCE_ZYNTHIUM_BAR,
  RESOURCE_KEANIUM_BAR,
  RESOURCE_GHODIUM_MELT,
  RESOURCE_OXIDANT,
  RESOURCE_REDUCTANT,
  RESOURCE_PURIFIER,
  RESOURCE_BATTERY,
  RESOURCE_COMPOSITE,
  RESOURCE_CRYSTAL,
  RESOURCE_LIQUID,
  RESOURCE_WIRE,
  RESOURCE_SWITCH,
  RESOURCE_TRANSISTOR,
  RESOURCE_MICROCHIP,
  RESOURCE_CIRCUIT,
  RESOURCE_DEVICE,
  RESOURCE_CELL,
  RESOURCE_PHLEGM,
  RESOURCE_TISSUE,
  RESOURCE_MUSCLE,
  RESOURCE_ORGANOID,
  RESOURCE_ORGANISM,
  RESOURCE_ALLOY,
  RESOURCE_TUBE,
  RESOURCE_FIXTURES,
  RESOURCE_FRAME,
  RESOURCE_HYDRAULICS,
  RESOURCE_MACHINE,
  RESOURCE_CONDENSATE,
  RESOURCE_CONCENTRATE,
  RESOURCE_EXTRACT,
  RESOURCE_SPIRIT,
  RESOURCE_EMANATION,
  RESOURCE_ESSENCE,
)
let COLORS_ALL = (
  COLOR_RED,
  COLOR_PURPLE,
  COLOR_BLUE,
  COLOR_CYAN,
  COLOR_GREEN,
  COLOR_YELLOW,
  COLOR_ORANGE,
  COLOR_BROWN,
  COLOR_GREY,
  COLOR_WHITE,
)
let INTERSHARD_RESOURCES = (SUBSCRIPTION_TOKEN, CPU_UNLOCK, PIXEL, ACCESS_KEY)
