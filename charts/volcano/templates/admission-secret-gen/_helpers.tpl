{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.admissionSecretGen.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.admission.image) "global" .Values.global) -}}
{{- end -}}
