Notification = null
### @ngInject ###
Notification = ->
    controller = null
    ### @ngInject ###
    controller = ($scope, $timeout, AlertService) ->
        vm = @

        active = false

        ## - END PRIVATE - ##

        $scope.data = AlertService.getData()
        $scope.$watch 'data.message', (n) ->
            if not n and active is true and vm.autoClose is no
                vm.close()
                return

            return unless n

            active    = true
            vm.styles = ['show']

            if $scope.data.success
                vm.icon = 'ion-checkmark'
                vm.styles.push 'success'
            else if $scope.data.fail
                vm.icon = 'ion-alert-circled'
                vm.styles.push 'fail'
            else if $scope.data.info
                vm.icon = 'ion-ios7-information-outline'
                vm.styles.push 'info'

            if AlertService.autoClose
                vm.autoClose = yes
                $timeout ->
                    vm.close()
                , 3000
            else
                vm.autoClose           = no
                AlertService.autoClose = on

            vm.title    = if $scope.data.title then $scope.data.title else $scope.data.message
            vm.subtitle = if $scope.data.subtitle then $scope.data.subtitle else ''
            vm.describe = if $scope.data.title then $scope.data.message else ''
            vm.showUp   = yes
            vm.styles.push 'long' if vm.subtitle and vm.describe
            return


        vm.icon      = ''
        vm.title     = ''
        vm.subtitle  = ''
        vm.describe  = ''
        vm.autoClose = no
        vm.styles    = []

        vm.close = ->
            vm.styles = []
            AlertService.resetStatus()
            return
        return


    directive =
        restrict: 'E'
        controllerAs: 'vm'
        controller: controller
        templateUrl: 'scripts/components/ui/notification.drt.tpl.cch_mob.html'
    directive


angular.module 'app'
.directive 'glNotification', Notification
