FROM bitnami/kubectl

# Image annotations
# see: https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.title=kubectl-gpg-ncftp
LABEL org.opencontainers.image.description="image with kubectl, gpg and ncftp installed"
LABEL org.opencontainers.image.url=https://github.com/taskmedia/kubectl-gpg-ncftp/pkgs/container/kubectl-gpg-ncftp
LABEL org.opencontainers.image.source=https://github.com/taskmedia/kubectl-gpg-ncftp/blob/main/Dockerfile
LABEL org.opencontainers.image.vendor=task.media
LABEL org.opencontainers.image.licenses=MIT

USER root

RUN apt update && apt install --yes gpg ncftp

USER 1001
