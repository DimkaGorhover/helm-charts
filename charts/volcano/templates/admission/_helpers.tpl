{{/*
Create the name of the service account for admission
*/}}
{{- define "volcano.admission.serviceAccountName" -}}
{{- if .Values.admission.serviceAccount.create -}}
    {{- $defName := printf "%s-%s" (include "common.names.fullname" .) "admission" -}}
    {{ default $defName .Values.admission.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.admission.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.admission.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.admission.image) "global" .Values.global) -}}
{{- end -}}

{{/*
Create the name of the service account for admission
*/}}
{{- define "volcano.admission.serviceName" -}}
{{- $defName := printf "%s-%s" (include "common.names.fullname" .) "admission" -}}
{{- if not .Values.admission.service.name -}}
    {{ .Values.admission.service.name | default $defName }}
{{- else -}}
    {{ $defName }}
{{- end -}}
{{- end -}}
