# otaniemi.pmtiles

✨ This repository was created with assistance from Generated AI. 🤖

This repository is for generating PMTiles of the Otaniemi area using [protomaps/basemaps](https://github.com/protomaps/basemaps). 🗺️

## Requirements 🚀

- Java ☕
- Maven 🛠️
- Clone [protomaps/basemaps](https://github.com/protomaps/basemaps) alongside this repository
- Build the Planetiler (basemaps version) JAR file in the `tiles` directory of the basemaps repository

## Setup 🏗️

1. Clone this repository and [protomaps/basemaps](https://github.com/protomaps/basemaps) side by side:

```sh
git clone https://github.com/protomaps/basemaps.git
```

2. Build the basemaps Planetiler JAR:

```sh
cd ../basemaps/tiles
make clean
make
```

This will generate the required JAR file at `../basemaps/tiles/target/*-with-deps.jar`.

## Data 📦

- Clipping area: `otaniemi.geojson`
- Required geodata should be placed in the `data/sources/` directory

## Usage 📝

1. Place the necessary data in `data/sources/`.
2. Generate the PMTiles file with the following command:

```sh
make pmtiles
```

This will internally run:

```sh
java -jar ../basemaps/tiles/target/*-with-deps.jar --download --force --area=finland --clip=otaniemi.geojson
mv finland.pmtiles docs/otaniemi.pmtiles
```

After running, the output file will be renamed from `finland.pmtiles` to `docs/otaniemi.pmtiles` automatically.

3. To clean up intermediate data and generated files, run:

```sh
make clean
```

## License 📄

This repository is licensed under CC0 1.0 Universal.
