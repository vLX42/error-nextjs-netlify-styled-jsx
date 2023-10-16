#!/bin/bash

APP_ID="d83af82c-928b-40e0-a9ae-f5db4db777ea"

npm i -f

echo "LINKING"
netlify unlink
rm -Rf ./.netlify
rm -Rf ./build

netlify link --id "$APP_ID"

netlify status

echo "BUILDING AND DEPLOYING"
netlify deploy --build --prod
