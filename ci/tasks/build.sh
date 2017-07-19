#!/bin/bash
cd service-repo

echo I am in `pwd`

dotnet restore
dotnet publish -c Release -o ./publish

cp manifest.yml ./publish/
