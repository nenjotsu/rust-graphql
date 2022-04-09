wrk.method = "POST"
wrk.headers["Content-Type"] = "application/json"
wrk.headers["Accept"] = "application/json"

query = [[
  query queryProducts {
    products {
        id
        product_id
        garment_size
      }
    }
  }
]]
-- variables = [[
--   "ids": [1,2,3,4]
-- ]]
-- wrk.body ='{"query": "' .. string.gsub(query, '\n', '') .. '", "variables": {' .. string.gsub(variables, '\n', '') .. '} }'
wrk.body ='{"query": "' .. string.gsub(query, '\n', '') .. '"}'
