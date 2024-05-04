let
    body = "{
            ""idpais"": ""string"",
            ""iddepartamento"": ""string"",
			""idciudad"": ""string"",
            ""nombrepais"": ""string"",
			""nombredepartamento"": ""string"",
			""nombreciudad"": ""string""
            }",
      data= Web.Contents("http://127.0.0.1:8070/consultargeografia",[Content=Text.ToBinary(body),Headers=[#"Content-Type"="application/json"]]),
      dataRecord = Json.Document(data),
      source=dataRecord,
      table = Table.FromRecords(source)
in
      table