describe 'size', ->
  beforeEach ->
    loadFixtures("size.html")

  _testAll('#size-normal')

  _testAll('#size-large', 'large')

  _testAll('#size-small', 'small')

  return