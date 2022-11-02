{{/*

*/}}
{{- define "local-path.image" -}}

{{- $image := printf "%s:%s" .Values.image.repository (default .Chart.AppVersion .Values.image.tag) -}}
{{- if .Values.image.registry -}}
{{- $image = printf "%s/%s" .Values.image.registry $image -}}
{{- end -}}
{{ $image }}
{{- end -}}

{{/*

*/}}
{{- define "local-path.helper.image" -}}
{{- $registry := "" -}}
{{- $repository := "busybox" -}}
{{- $tag := "stable" -}}
{{- if and .Values.helper .Values.helper.image -}}
{{- with .Values.helper.image.registry -}}
{{- $registry = . -}}
{{- end -}}
{{- with .Values.helper.image.repository -}}
{{- $repository = . -}}
{{- end -}}
{{- with .Values.helper.image.tag -}}
{{- $tag = . -}}
{{- end -}}
{{- end -}}
{{- $image := printf "%s:%s" $repository $tag -}}
{{- if $registry -}}
{{- $image = printf "%s/%s" $registry $image -}}
{{- end -}}
{{ $image }}
{{- end -}}
