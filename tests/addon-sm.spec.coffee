describe 'group', ->
  beforeEach ->
    loadFixtures("addon-sm.html")

  _testAll('#addon-left', 'small', [0,1,1,0])

  _testAll('#addon-right', 'small', [1,0,0,1])

  _testAll('#addon-both', 'small', [0,0,0,0])

  return