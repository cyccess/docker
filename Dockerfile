FROM microsoft/dotnet:2.1-aspnetcore-runtime 
ARG source=.
WORKDIR /wwwroot
ENV ASPNETCORE_URLS http://*:8802
ENTRYPOINT ["dotnet", "Cyc.Order.Web.dll"]
COPY $source .
EXPOSE 8802