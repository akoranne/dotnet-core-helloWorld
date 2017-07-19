#!/bin/bash
cd service-repo

dotnet restore
dotnet publish -c release
cp manifest.yml ./bin/?elease/netcoreapp?.?/publish/
