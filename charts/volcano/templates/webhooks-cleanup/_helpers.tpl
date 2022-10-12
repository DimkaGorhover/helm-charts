{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.webhookCleanup.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.webhooks.cleanup.image) "global" .Values.global) -}}
{{- end -}}
