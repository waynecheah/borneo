
angular.module 'app'
.factory 'AlertService', ($timeout) ->
    data =
        title: ''
        subtitle: ''
        message: ''
        fail: no
        success: no
        info: no

    autoClose: on

    resetStatus: ->
        data.title    = ''
        data.subtitle = ''
        data.message  = ''
        data.fail     = no
        data.success  = no
        data.info     = no
        return

    sticky: ->
        @autoClose = off
        return

    showError: (message, title=null, subtitle=null) ->
        onScreen = data.fail
        @resetStatus()

        if onScreen
            $timeout ->
                data.fail     = yes
                data.message  = message
                data.title    = title if title
                data.subtitle = subtitle if subtitle
            , 300
        else
            data.fail     = yes
            data.message  = message
            data.title    = title if title
            data.subtitle = subtitle if subtitle
        return

    showSuccess: (message, title=null, subtitle=null) ->
        @resetStatus()
        data.success  = yes
        data.message  = message
        data.title    = title if title
        data.subtitle = subtitle if subtitle
        return

    getData: -> data
