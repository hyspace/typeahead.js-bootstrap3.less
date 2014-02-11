describe 'group', ->
  beforeEach ->
    loadFixtures("group.html")

  _testAll('#group-normal')

  _testAll('#group-large', 'large')

  _testAll('#group-small', 'small')

  return