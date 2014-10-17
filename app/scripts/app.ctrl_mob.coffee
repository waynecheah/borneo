AppCtrl = null
### @ngInject ###
AppCtrl = ($rootScope, $scope, $ionicNavBarDelegate, MenuFtr) ->
    vm = @

    $rootScope.$on '$stateChangeSuccess', (e, current, toParams, previous, fromParams) ->
        MenuFtr.changeRoute current.name

        if current.name is 'login'
            $ionicNavBarDelegate.showBar false
            $scope.headerStyle = display: 'none'
        else
            $scope.headerStyle = display: 'flex'

    ## - END PRIVATE - ##

    vm.onMenu    = false
    vm.onOverlay = false

    vm.toggleMenu = ->
        vm.onMenu    = !vm.onMenu
        vm.onOverlay = vm.onMenu
        return
    vm.closeOverlay = ->
        vm.onMenu    = false
        vm.onOverlay = false
        return

    return


angular.module 'app'
.controller 'AppCtrl', AppCtrl
