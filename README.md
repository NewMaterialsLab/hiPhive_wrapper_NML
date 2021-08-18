# hiPhive Wrapper by NML

hiPhive Wrapper by NML is a python script designed  to facilitate the use of hiPhive python library with VASP. 

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install hiPhive.

```bash
pip install pymatgen hiPhive
```

## Usage

Pre-processing:

```bash
hiPhive_wrapper_NML.py -m pre -n 10 -r mc -a 0.2
```

Post-processing:

```bash
hiPhive_wrapper_NML.py -m post -n 10 -f rfe -c 7.0 5.0 3.0 -t 0.8 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[GNU](https://www.gnu.org/licenses/gpl-3.0.en.html)
