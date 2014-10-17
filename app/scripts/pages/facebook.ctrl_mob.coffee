FacebookCtrl = null
### @ngInject ###
FacebookCtrl = ($sce) ->
    vm = @

    url = 'https://m.facebook.com/profile.php?id=179920642031133'
    location.replace url

    ## - END PRIVATE - ##
    
    vm.style =
        width: '100%'
        height: '600px'
    
    vm.trustSrc = -> $sce.trustAsResourceUrl url

    return


angular.module 'app'
.controller 'FacebookCtrl', FacebookCtrl
