FROM catchdigital/node-sass
WORKDIR /frontend
COPY . .
COPY package.json .
COPY package-lock.json .
RUN yarn install && \
    yarn run build
