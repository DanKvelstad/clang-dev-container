FROM dankvelstad/clang-dev-container:latest AS development
# ToDo: we don't want to copy .vscode since it gets large!
COPY ./ /workspaces/cdc/
RUN /workspaces/cdc/tasks/prepare_release.sh
RUN /workspaces/cdc/tasks/build.sh

FROM dankvelstad/clang-dev-container:latest AS testing
COPY --from=development /workspaces/cdc/build/test /workspaces/cdc/build/test
RUN /workspaces/cdc/build/test

FROM ubuntu:rolling AS production
COPY --from=development /workspaces/cdc/build/cdc /usr/bin/cdc
ENTRYPOINT [ "cdc" ]