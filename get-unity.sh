#!/bin/sh
URL=http://beta.unity3d.com/download/ad31c9083c46/
PKG=unity-editor_amd64-2017.2.0f1.deb

echo "Downloading Unity3D installer..."
curl -o /app/unity_editor.deb -s "${URL}${PKG}" 
echo "Unity3D installer downloaded."
