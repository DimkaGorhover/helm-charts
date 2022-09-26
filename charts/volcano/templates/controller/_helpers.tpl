{{/*
Create the name of the service account for controller
*/}}
{{- define "volcano.controller.serviceAccountName" -}}
{{- if .Values.controller.serviceAccount.create -}}
    {{- $defName := printf "%s-%s" (include "common.names.fullname" .) "controller" -}}
    {{ default $defName .Values.controller.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.controller.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.controller.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image .Values.controller.image) "global" .Values.global) -}}
{{- end -}}
