{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.crdsCleanup.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.crds.cleanup.image) "global" .Values.global) -}}
{{- end -}}
