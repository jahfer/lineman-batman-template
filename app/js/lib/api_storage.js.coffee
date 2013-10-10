class BatmanApp.APIStorage extends Batman.RestStorage
  constructor: ->
    super

    @actionBasedHeaders = {}
    @defaultRequestOptions = {
      type: 'json'
      headers: {
        # 'X-Shopify-Api-Features': 'pagination-headers'
      }
    }

  urlForRecord: -> @_addJsonExtension(super)
  urlForCollection: -> @_addJsonExtension(super)

  _addJsonExtension: (url) ->
    if url.indexOf('?') isnt -1 or url.substr(-5, 5) is '.json'
      return url
    'api' + url + '.json'
