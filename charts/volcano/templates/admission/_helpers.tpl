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
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image .Values.admission.image) "global" .Values.global) -}}
{{- end -}}
