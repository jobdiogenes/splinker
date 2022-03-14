SELECT Tax.Kingdom, Tax.Class, Tax.Ordem, Tax.Family, Tax.Genus, Tax.Species, Tax.SubSpecies, T.Author, T.CommonName, E.StationFieldNumber, C.CatalogNumber, D.TypeStatusName, E.Method, E.StartDate, A.FirstName, A.LastName, Geo.Continent, Geo.Country, Geo.StateProvince, Geo.County, L.LocalityName, L.Latitude1, L.Longitude1, L.MinElevation, L.MaxElevation, L.VerbatimElevation, D.DeterminedDate, A2.FirstName, A2.LastName, C.Remarks, T.CommonName FROM collectionobject C LEFT JOIN determination D ON ( C.CollectionObjectID = D.CollectionObjectID AND D.IsCurrent = 1 ) LEFT JOIN collectingevent E ON ( E.CollectingEventID = C.CollectingEventID ) LEFT JOIN locality L ON ( L.LocalityID = E.LocalityID ) LEFT JOIN collector M ON ( M.CollectingEventID = E.CollectingEventID AND M.OrderNumber = 0 ) LEFT JOIN agent A ON ( A.AgentID = M.AgentID ) LEFT JOIN agent A2 ON ( A2.AgentID = D.DeterminerID ) LEFT JOIN taxon T ON ( T.TaxonID = D.TaxonID ) LEFT JOIN temp1 AS Geo ON L.geographyID = Geo.geographyID LEFT JOIN temp2 AS Tax ON Tax.taxonID = D.TaxonID