# docker-scratch - Scripts to build and run a Scratch 3.0 web GUI.
# Copyright (C) 2023 Adam Monsen
#
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM node:19-alpine3.16

RUN apk add git

WORKDIR /app

RUN git clone https://github.com/LLK/scratch-gui.git \
  && cd scratch-gui \
  && git checkout v1.3.7 \
  && npm install

WORKDIR /app/scratch-gui

EXPOSE 8601

# work around https://github.com/LLK/scratch-gui/issues/7890
ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm run build

CMD ["npm", "start"]
