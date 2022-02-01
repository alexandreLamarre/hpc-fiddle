# ARG TEST_ENV
# ARG GPU
# ARG METRICS

# # ====== Test Tools Setup Stage =======
# FROM gcc:10.3.0 as setup-test-tools
# WORKDIR /usr/src/app
# COPY . /usr/src/app/
# # external tools install here
# # RUN  /usr/src/app/install/install_valgrind
# # RUN which valgrind
# # RUN /usr/src/app/install/install_likwid
# RUN which modprobe
# RUN which likwid-perfctr

# # TODO install other debug tools:
# #  - QCacheGrind
# #  - likwid 


# # ====== Parallelism Tools Setup Stage ====
# # FROM gcc:10.3.0 as parallelism-tools
# # WORKDIR /usr/src/app
# # COPY . /usr/src/app/
# # TODO : install tools like open MP
# # TODO : check for GPU tools like CUDA


# # ======= Build Stage ========
# FROM gcc:10.3.0 as build
# WORKDIR /usr/src/app
# COPY --from=setup-test-tools /usr/src/app /test
# COPY . /usr/src/app/
# # Copy parallelism tools
# RUN make clean
# RUN make
# CMD ["/usr/src/app/main"]


# ======== Test Stage ========
# TODO create test suite container with GoogleTest
# that also uses display cachegrind display + valgrind + metrics
# enable with args


# TODO 
# # ======= Final Stage Distroless App =========
# FROM gcr.io/distroless/python3-debian-11:debug
# COPY --from=build /usr/src/app /

# CMD ["echo", "something"]

FROM alpine

COPY . /usr/src/app
RUN apk update
RUN apk add git
RUN apk add make
RUN which make
RUN /usr/src/app/install/install_likwid
RUN which perl

CMD ["cat", "likwid/res.out"]