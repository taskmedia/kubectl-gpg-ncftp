FROM bitnami/kubectl

# Image annotations
# see: https://github.com/opencontainers/image-spec/blob/main/annotations.md#pre-defined-annotation-keys
LABEL org.opencontainers.image.title=kubectl-gpg-ftp
LABEL org.opencontainers.image.description="image with kubectl, gpg and ftp installed"
LABEL org.opencontainers.image.url=https://github.com/taskmedia/kubectl-gpg-ftp/pkgs/container/kubectl-gpg-ftp
LABEL org.opencontainers.image.source=https://github.com/taskmedia/kubectl-gpg-ftp/blob/main/Dockerfile
LABEL org.opencontainers.image.vendor=task.media
LABEL org.opencontainers.image.licenses=MIT

USER root

RUN apt update && apt install --yes gpg ftp

USER 1001
