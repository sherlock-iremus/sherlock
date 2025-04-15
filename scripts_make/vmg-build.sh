source ../ENV

cd $REPOSITORIES/voix-du-mercure-galant
pnpm i
gatsby clean
gatsby build --prefix-paths --verbose
cd -
