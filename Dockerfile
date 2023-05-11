FROM bitnami/dotnet
WORKDIR /App_Start
COPY *.csproj .
WORKDIR /App_Start
COPY /App_Start .
ENTRYPOINT ["dotnet", "DotNet.Docker.dll"]
