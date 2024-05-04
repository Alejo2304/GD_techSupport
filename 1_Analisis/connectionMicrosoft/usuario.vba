let
    body = "{
        ""IdUsuario"": ""string"",
        ""IdTipoUsuario"": ""string"",
        ""IdTipoDocumento"": ""string"",
        ""IdTipoGenero"": ""string"",
        ""NombreUsuario"": ""string"",
        ""ApellidoUsuario"": ""string"",
        ""EmailUsuario"": ""string"",
        ""TelefonoUsuario"": ""string"",
        ""TipoDocumento"": ""string"",
        ""NumeroDocumento"": ""string"",
        ""NombreTipoUsuario"": ""string"",
        ""DescripcionTipoUsuario"": ""string"",
        ""GeneroUsuario"": ""string""
    }",
      data= Web.Contents("http://127.0.0.1:8070/consultarusuarioColeccion",[Content=Text.ToBinary(body),Headers=[#"Content-Type"="application/json"]]),
      dataRecord = Json.Document(data),
      source=dataRecord,
      table = Table.FromRecords(source)
in
      table