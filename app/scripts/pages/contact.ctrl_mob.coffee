ContactCtrl = null
### @ngInject ###
ContactCtrl = ($state, $window) ->
    vm = @

    coordinate =
        lat: '3.097357'
        lng: '101.677755'
    width = $window.innerWidth - 26

    ## - END PRIVATE - ##

    vm.mapsUrl = 'http://maps.google.com/maps/api/staticmap?center=' +
                 coordinate.lat+','+coordinate.lng+'&zoom=15&markers=' +
                 coordinate.lat+','+coordinate.lng+'&size=' +
                 width+'x285&sensor=false'

    return


angular.module 'app'
.controller 'ContactCtrl', ContactCtrl
