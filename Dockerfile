FROM dankvelstad/cdc AS development
RUN /workspaces/cde/tasks/prepare_release.sh
RUN /workspaces/cde/tasks/build.sh

FROM ubuntu:rolling AS testing
COPY --from=development /workspaces/cde /workspaces/cde
RUN /workspaces/cde/tasks/test.sh

FROM ubuntu:rolling AS production
COPY --from=development /workspaces/cde/build/cde /usr/bin/cde
ENTRYPOINT [ "cde" ]