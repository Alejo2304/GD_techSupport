let
    body = "{
        ""idEmpresa"": ""string"",
        ""idSede"": ""string"",
        ""idDireccionSede"": ""string"",
        ""idCiudadSede"": ""string"",
        ""idEmpleado"": ""string"",
        ""idTipoEmpleado"": ""string"",
        ""nombreEmpresa"": ""string"",
        ""nombreSede"": ""string"",
        ""emailSede"": ""string"",
        ""nombreCiudad"": ""string"",
        ""direccionSede"": ""string"",
        ""codigoPostal"": ""string"",
        ""nombreEmpleado"": ""string"",
        ""apellidoEmpleado"": ""string"",
        ""celularEmpleado"": ""string"",
        ""emailEmpleado"": ""string"",
        ""fechaIngreso"": ""string"",
        ""nombreTipoEmpleado"": ""string"",
        ""descripcionTipoEmpleado"": ""string""
        }",
      data= Web.Contents("http://127.0.0.1:8070/consultarorganizacion",[Content=Text.ToBinary(body),Headers=[#"Content-Type"="application/json"]]),
      dataRecord = Json.Document(data),
      source=dataRecord,
      table = Table.FromRecords(source)
in
      table