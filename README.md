# map_launcher_example

Exemplo de uso da lib [map_launcher](https://pub.dev/packages/map_launcher)
para acionar Google Maps/Waze/etc.. através de uma aplicação Flutter.

![Launching maps](https://github.com/RicardoRaymundo/map_launcher_example/blob/master/images%26gifs/map_launcher.gif)

> Veja tambem o manual de google maps para 
[Flutter](https://github.com/RicardoRaymundo/google_maps_example)
e [JavaScript](https://github.com/RicardoRaymundo/google_maps_example/tree/master/js_examples)
 
 
## Conteúdo
 
- [Instalar](#instalar)
- [Utilizar](#utilizar)
- [Aprender](#aprender)

## Instalar
Adicione a biblioteca [map_launcher](https://pub.dev/packages/map_launcher)
ao pubspec.yaml

```yaml
dependencies:
  map_launcher: ^0.4.2
```

## Utilizar

Crie o método que realizará o *launch* do mapa e adicionará um Marker nas coordenadas definidas.
```dart
  launchMap() async {
  
    /// Verifica os mapas disponíveis no aparelho
    final availableMaps = await MapLauncher.installedMaps;
    print(availableMaps); // [AvailableMap { mapName: Google Maps, mapType: google }, ...]

    /// Abre o primeiro mapa na lista de mapas disponíveis
    /// Adiciona um Marker nas coordenadas definidas
    await availableMaps.first.showMarker(
      coords: Coords(31.233568, 121.505504),
      title: "Shanghai Tower",
      description: "Asia's tallest building",
    );
  }
```

## Aprender
[Exemplo da biblioteca map_launcher no GitHub](https://github.com/mattermoran/map_launcher/tree/master/example)
