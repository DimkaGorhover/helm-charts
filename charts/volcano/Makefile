render:
	helm template \
		volcano \
		--namespace volcano-system \
		--values values.yaml \
		$(shell pwd) > /Volumes/RAMDisk/volcano-all.yaml \
		&& subl /Volumes/RAMDisk/volcano-all.yaml
