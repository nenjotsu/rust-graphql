# GraphQL Server

- Rust nightly
- Rocket (Web Server)
- Diesel (Postgresql ORM)
- Juniper (GraphQL)

## Description
 
 - Commands
    - ```cargo check```
    - ```cargo r```
    - ```cargo build```

## Benchmark Test
bombardier -c 125 -d 30s http://127.0.0.1:8000/graphql -k --timeout=2s --fasthttp -b '{ "query": "{ products { id, product_id, garment_size } }" }' --method=POST -H "Content-Type: application/json" -s

wrk -t4 -c125 -d30s -s perf.lua http://127.0.0.1:8000/graphql