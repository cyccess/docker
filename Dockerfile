FROM microsoft/dotnet:2.1-aspnetcore-runtime 
WORKDIR /publish 
COPY . . 
EXPOSE 8802
ENV ASPNETCORE_URLS http://*:8802
ENTRYPOINT ["dotnet", "Cyc.Order.Web.dll"]