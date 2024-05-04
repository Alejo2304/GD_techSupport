let
    body = "{
        ""IdFactura"": ""string"",
        ""IdEstadoFactura"": ""string"",
        ""IdDetalleFactura"": ""string"",
        ""IdDiagnostico"": ""string"",
        ""IdUsuario"": ""string"",
        ""NombreUsuario"": ""string"",
        ""ApellidoUsuario"": ""string"",
        ""DocumentoUsuario"": ""string"",
        ""EstadoFactura"": ""string"",
        ""DetalleFactura"": ""string"",
        ""SubtotalFactura"": ""string"",
        ""DescripcionDiagnostico"": ""string""
    }",
      data= Web.Contents("http://127.0.0.1:8070/consultartransaccion",[Content=Text.ToBinary(body),Headers=[#"Content-Type"="application/json"]]),
      dataRecord = Json.Document(data),
      source=dataRecord,
      table = Table.FromRecords(source)
in
      table