ACTORS = ['Adam Sandler', 'Rob Schneider', 'Kevin Hart']

SETTINGS = [
  ' is on a desert island! ',
  ' is a sex therapist for pandas! ',
  ' is trapped inside a Quiznos! ',
  ' is a pizzaphobic pothead! ',
  ' is a melted cheese addict! ',
  ' studies law at Trump University! '
]

RELATION = [
  'His girlfriend',
  'His BFF',
  'His grandma',
  'His boss',
  'His landlord',
  'His pet'
]

PUNCHLINES = [
  ' is a doorman who always highfives children of divorce.',
  ' is a coconut or something.',
  ' is a dolphin\'s only hope to become Magic Mike.',
  ' is secretly MTV\'s Dan Cortese.',
  ' aims to become Mr. Olympia 1983.',
  ' a millionaire living in a garbage truck.',
  ' plays World of Warcraft using only elbows.',
  ' and him plot to steal $80 million worth of recycling cans.'
]

def plot_generator
  # TODO: your code here
  return "#{pick_actor} #{pick_setting} #{pick_relation} #{pick_punchline}"
end

def pick_actor
  # TODO: your code here
  return ACTORS[rand(0...ACTORS.length)]
end

def pick_setting
  # TODO: your code here
  return SETTINGS[rand(0...SETTINGS.length)]
end

def pick_relation
  # TODO: your code here
  return RELATION[rand(0...RELATION.length)]
end

def pick_punchline
  # TODO: your code here
  return PUNCHLINES[rand(0...PUNCHLINES.length)]
end
