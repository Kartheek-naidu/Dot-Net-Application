# FROM ubuntu/dotnet-runtime
# WORKDIR /app
# COPY --from=build-env /app .
# EXPOSE 80
# ENTRYPOINT ["dotnet", "MyApplication.dll"]
#FROM 571758506941.dkr.ecr.us-east-1.amazonaws.com/dot-net:latest



# FROM appdynamics/dotnet-core-agent
# WORKDIR /source
# COPY *.csproj .
# RUN dotnet restore --use-current-runtime
# COPY aspnetapp/. .
# RUN dotnet publish --use-current-runtime --self-contained false --no-restore -o /app
# ENTRYPOINT ["dotnet", "/app/HelloWorld.dll"]

FROM bitnami/dotnet
WORKDIR /App_Start
COPY *.csproj .
WORKDIR /App_Start
COPY /App_Start .
ENTRYPOINT ["dotnet", "DotNet.Docker.dll"]
