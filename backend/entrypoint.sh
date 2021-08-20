# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /ApiGen

# copy csproj and restore as distinct layers
	@@ -10,10 +10,9 @@ RUN dotnet restore
# copy everything else and build app
COPY ApiGen/. ./ApiGen/
WORKDIR /backend/ApiGen
RUN dotnet publish -c release -o /app --no-restore

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "ApiGen.dll"]
