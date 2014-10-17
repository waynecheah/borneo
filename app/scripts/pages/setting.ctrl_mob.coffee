SettingCtrl = null
### @ngInject ###
SettingCtrl = ($localStorage, $timeout, $state, AlertService, gettextCatalog) ->
    vm = @

    ## - END PRIVATE - ##

    if $localStorage.language
        vm.language = $localStorage.language
    else
        vm.language = 'en'

    vm.change = ->
        $timeout ->
            message = gettextCatalog.getString 'Language changed successfully'
            AlertService.showSuccess message
            gettextCatalog.setCurrentLanguage vm.language

            if vm.language is 'en'
                delete $localStorage.language
            else
                $localStorage.language = vm.language
            $state.go 'news'

            $timeout ->
                location.reload()
            , 1500
            return
        , 0
        return
    vm.share = ->
        message = gettextCatalog.getString 'Share you an App, I think you may like it'
        subject = gettextCatalog.getString 'BorNeo App is Awesome'
        webUrl  = 'https://play.google.com/store/apps/details?id=com.repotechnology.borneo'
        window.plugins.socialsharing.share message, subject, null, webUrl
        return

    return


angular.module 'app'
.controller 'SettingCtrl', SettingCtrl
