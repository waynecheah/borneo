MenuFtr = null
### @ngInject ###
MenuFtr = ->
    data =
        current: ''

    service =
        state: ''

        changeRoute: (state) ->
            sm = @
            sm.state = state
            data.current = state
            return
        getData: -> data
    service


angular.module 'app'
.factory 'MenuFtr', MenuFtr
