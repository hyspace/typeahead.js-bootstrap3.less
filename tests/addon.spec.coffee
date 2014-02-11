describe 'group', ->
  beforeEach ->
    loadFixtures("addon.html")

  _testAll('#addon-left', 'base', [0,1,1,0])

  _testAll('#addon-right', 'base', [1,0,0,1])

  _testAll('#addon-both', 'base', [0,0,0,0])

  return