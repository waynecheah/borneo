
describe 'nl2br filter', ->
    beforeEach module 'app'

    it 'Should convert new line to html BR tag', inject (nl2brFilter) ->
        expect nl2brFilter('Here the\nnew line')
        .toBe 'Here the<br />\nnew line'
        expect nl2brFilter('Here the\nnew line', false)
        .toBe 'Here the<br>\nnew line'
        return

    return
