import json
import jsonpath

def readLocatorFromJSON(locator_name):
  file = open(__file__ + "/../test.json")
  #file = open('../../../../../../Users/dcremers/Learn Robot Framework/Create Batch File & Share Code/ExternalKeywords/test.json')
  #file = open('C:/Users/dcremers/Learn Robot Framework/Create Batch File & Share Code/ExternalKeywords/test.json')
  response = json.loads(file.read())
  value = jsonpath.jsonpath(response, locator_name)
  return value[0]