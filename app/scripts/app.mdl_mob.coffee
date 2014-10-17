
angular.module 'app', ['gettext', 'ionic', 'ui.router', 'ngCordovaIonic', 'ngStorage']

.run ($localStorage, gettextCatalog) ->
    gettextCatalog.setCurrentLanguage $localStorage.language if $localStorage.language
    gettextCatalog.debug = on
    return
.run ($ionicPlatform, $cordovaSplashscreen) ->
    $ionicPlatform.ready ->
        $cordovaSplashscreen.hide() if ionic.Platform.isWebView()
        return
    return

.config ($compileProvider) ->
    $compileProvider.imgSrcSanitizationWhitelist(/^\s*(https?|ftp|mailto|file|tel):/)
    return

.config ($stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise '/'
    $stateProvider
    .state 'news',
        url: '/'
        controller: 'NewsCtrl as news'
        templateUrl: 'scripts/pages/news.ctrl.tpl.cch_mob.html'
    .state 'about',
        url: '/about'
        controller: 'AboutCtrl as about'
        templateUrl: 'scripts/pages/about.ctrl.tpl.cch_mob.html'
    .state 'contact',
        url: '/contact'
        controller: 'ContactCtrl as contact'
        templateUrl: 'scripts/pages/contact.ctrl.tpl.cch_mob.html'
    .state 'facebook',
        url: '/facebook'
        controller: 'FacebookCtrl as facebook'
        templateUrl: 'scripts/pages/facebook.ctrl.tpl.cch_mob.html'
    .state 'setting',
        url: '/setting'
        controller: 'SettingCtrl as setting'
        templateUrl: 'scripts/pages/setting.ctrl.tpl.cch_mob.html'
    return

.constant 'ConfigCnst',
#    serverUrl: 'http://localhost:3000/api'           # development
    mobileUrl: 'http://localhost:9000'           # development

    serverUrl: 'http://cheah.homeip.net:9090/api' # testing server
#    serverUrl: 'http://app.repotechnology.com:3000'           # production
#    mobileUrl: 'http://app.repotechnology.com'                # production

    componentPath:
        _base: 'scripts/components'
        services: 'scripts/components/services'
        ui: 'scripts/components/ui'

    site:
        name: 'BorNeo'
        company: 'Repo Technology'
        url: 'http://www.hcm.my'
        tel: '016-929 0611'
        email: 'pangboon@repotechnology.com'
