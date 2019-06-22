FROM dankvelstad/clang-dev-container:latest AS development
COPY ./* /workspaces/cdc
RUN /workspaces/cdc/tasks/prepare_release.sh
RUN /workspaces/cdc/tasks/build.sh

FROM dankvelstad/clang-dev-container:latest AS testing
COPY --from=development /workspaces/cdc /workspaces/cdc
RUN /workspaces/cdc/tasks/test.sh

FROM ubuntu:rolling AS production
COPY --from=development /workspaces/cdc/build/cdc /usr/bin/cdc
ENTRYPOINT [ "cdc" ]