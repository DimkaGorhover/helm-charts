{{/*
Create the name of the service account for admission
*/}}
{{- define "volcano.admissionSecretGen.serviceAccountName" -}}
{{- if .Values.admission.serviceAccount.create -}}
    {{- $defName := printf "%s-%s" (include "common.names.fullname" .) "admission-secret-gen" -}}
    {{ default $defName .Values.admission.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.admission.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "volcano.admissionSecretGen.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.global.image .Values.admission.image) "global" .Values.global) -}}
{{- end -}}
