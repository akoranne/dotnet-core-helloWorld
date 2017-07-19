#!/bin/bash
cd service-repo

dotnet restore
dotnet publish -c Release
cp manifest.yml ./bin/Release/netcoreapp1.1/publish/
