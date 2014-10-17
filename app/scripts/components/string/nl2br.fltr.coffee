
angular.module 'app'
.filter 'nl2br', ->
    (str, is_xhtml) ->
        breakTag = if is_xhtml or typeof is_xhtml is 'undefined' then '<br ' + '/>' else '<br>'
        (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2')

