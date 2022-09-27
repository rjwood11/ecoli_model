#### Test mapboxer

library(mapboxer)


Forecast2 %>%
    as_mapbox_source(lng = "Longitude", lat = "Latitude")


mvc_sf <- Forecast2 %>%
sf::st_as_sf(coords = c("Longitude", "Latitude"), crs = 4326)

mvc_source_from_sf <- mvc_sf %>%
  as_mapbox_source()

mapboxer(
  center = c(-86.871181, 36.009035),
  zoom = 9
) %>%
  add_circle_layer(
    source = as_mapbox_source(Forecast2),
    circle_color = "red",
    circle_radius = 5
  )


mapboxer(
  style = basemaps$Carto$dark_matter,
  center = c(-73.9165, 40.7114),
  zoom = 9,
  minZoom = 8
)
