from node:20-alpine as stage

workdir /src/app
copy . .
run npm instal
run npm run build

from node:20-alpine

workdir /src/app

copy --from=stage /src/app/dist ./dist

cmd ["node", "dist/main.js"]