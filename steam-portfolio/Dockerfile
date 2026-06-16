# ✅ Fixed — skip build stage, non-root user
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS publish
WORKDIR /src
COPY ["steam-portfolio.csproj", "./"]
RUN dotnet restore "steam-portfolio.csproj"
COPY . .
RUN dotnet publish "steam-portfolio.csproj" \
    -c Release \
    -o /app/publish \
    --no-restore \
    /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
EXPOSE 8080

# ✅ Don't run as root
RUN adduser --disabled-password --gecos "" appuser && \
    chown -R appuser /app
USER appuser

COPY --from=publish /app/publish .
COPY --chown=appuser:appuser Database/ ./Database/
ENV ASPNETCORE_URLS=http://+:8080
ENV ASPNETCORE_ENVIRONMENT=Production
ENTRYPOINT ["dotnet", "steam-portfolio.dll"]

# # Stage 1: Build
# FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
# WORKDIR /src

# # Copy csproj and restore dependencies
# COPY ["steam-portfolio.csproj", "./"]
# RUN dotnet restore "steam-portfolio.csproj"

# # Copy everything else and build
# COPY . .
# RUN dotnet build "steam-portfolio.csproj" -c Release -o /app/build

# # Stage 2: Publish
# FROM build AS publish
# RUN dotnet publish "steam-portfolio.csproj" -c Release -o /app/publish /p:UseAppHost=false

# # Stage 3: Runtime
# FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
# WORKDIR /app
# EXPOSE 8080
# EXPOSE 8081

# # Copy published files
# COPY --from=publish /app/publish .

# # Set environment variables
# ENV ASPNETCORE_URLS=http://+:8080
# ENV ASPNETCORE_ENVIRONMENT=Production

# ENTRYPOINT ["dotnet", "steam-portfolio.dll"]
