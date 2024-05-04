let
    body = "{
        ""IdUsuario"": ""string"",
        ""IdDispositivo"": ""string"",
        ""IdTipoDispositivo"": ""string"",
        ""IdDiagnostico"": ""string"",
        ""IdEstadoDiagnostico"": ""string"",
        ""IdDetalleDiagnostico"": ""string"",
        ""IdEmpleadoDiagnostico"": ""string"",
        ""NombreUsuario"": ""string"",
        ""NombreTipoDispositivo"": ""string"",
        ""MarcaDispositivo"": ""string"",
        ""ModeloDispositivo"": ""string"",
        ""ColorDispositivo"": ""string"",
        ""DescripcionDiagnostico"": ""string"",
        ""EstadoDiagnostico"": ""string"",
        ""ObservacionDetalleDiagnostico"": ""string"",
        ""FechaDetalleDiagnostico"": ""string"",
        ""FechaInicioDiagnostico"": ""string"",
        ""FechaFinDiagnostico"": ""string"",
        ""NombreEmpleadoDiagnostico"": ""string""
    }",
      data= Web.Contents("http://127.0.0.1:8070/consultarservicio",[Content=Text.ToBinary(body),Headers=[#"Content-Type"="application/json"]]),
      dataRecord = Json.Document(data),
      source=dataRecord,
      table = Table.FromRecords(source)
in
      table