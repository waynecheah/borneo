MenuCtrl = null
### @ngInject ###
MenuCtrl = ($scope, $state, $timeout, gettextCatalog, MenuFtr) ->
    vm = @

    ## - END PRIVATE - ##

    vm.data = MenuFtr.getData()
    vm.list = [
        shref: 'news'
        icon: 'ion-social-rss'
        name: gettextCatalog.getString 'Latest News'
        active: true
    ,
        shref: 'about'
        icon: 'ion-ios7-home'
        name: gettextCatalog.getString 'About Us'
        active: false
    ,
        shref: 'contact'
        icon: 'ion-ios7-location'
        name: gettextCatalog.getString 'Contact Us'
        active: false
    ,
        shref: 'facebook'
        icon: 'ion-social-facebook'
        name: gettextCatalog.getString 'Facebook'
        active: false
    ,
        shref: 'setting'
        icon: 'ion-ios7-gear'
        name: gettextCatalog.getString 'Setting'
        active: false
    ]

    vm.goto = (index) ->
        $timeout ->
            $state.go vm.list[index].shref
        , 300
        return

    $scope.$watch 'menu.data.current', (n) ->
        return unless n
        index = -1
        angular.forEach vm.list, (item, i) ->
            index = i if vm.list[i].shref is n
            vm.list[i].active = false
            return
        vm.list[index].active = true if index > -1
        return
    return


angular.module 'app'
.controller 'MenuCtrl', MenuCtrl
