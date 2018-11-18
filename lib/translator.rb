# require modules here
require "yaml"
require "pry"
def load_library(path)
  # code goes here
  temp = YAML.load_file(path)
  emoticon_library =
  {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  temp.each do |word, emote|
    emoticon_library["get_meaning"][emote[1]] = word
    emoticon_library["get_emoticon"][emote[0]] = emote[1]
  end
  emoticon_library
end


def get_japanese_emoticon(path, emote)
  # code goes here
  lib = load_library(path)
  jap_emote = lib["get_emoticon"][emote]
  if jap_emote == nil
    return "Sorry, that emoticon was not found"
  end
  jap_emote
end

def get_english_meaning(path, emote)
  # code goes here
  lib = load_library(path)
  meaning = lib["get_meaning"][emote]
  if meaning == nil
    return "Sorry, that emoticon was not found"
  end
  meaning
end
