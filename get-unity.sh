#!/bin/sh
URL=http://beta.unity3d.com/download/ee86734cf592/
PKG=unity-editor_amd64-2017.2.0f3.deb

echo "Downloading Unity3D installer..."
curl -o /app/unity_editor.deb -s "${URL}${PKG}" 
echo "Unity3D installer downloaded."
