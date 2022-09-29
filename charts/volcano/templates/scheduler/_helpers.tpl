{{/*
Create the name of the service account for scheduler
*/}}
{{- define "volcano.scheduler.serviceAccountName" -}}
{{- if .Values.scheduler.serviceAccount.create -}}
    {{- $defName := printf "%s-%s" (include "common.names.fullname" .) "scheduler" -}}
    {{ default $defName .Values.scheduler.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.scheduler.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.scheduler.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.scheduler.image) "global" .Values.global) -}}
{{- end -}}
