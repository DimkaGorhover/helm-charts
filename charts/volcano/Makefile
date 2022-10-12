SHELL := /usr/bin/env bash -e -u -o pipefail -o errexit -o nounset
build_dir := /Volumes/RAMDisk

.SILENT:
render:
	helm template volcano \
		--namespace volcano-system \
		--values values.yaml \
		$(shell pwd) > $(build_dir)/volcano-all.yaml \
		&& subl $(build_dir)/volcano-all.yaml
