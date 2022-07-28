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

## Credits 

When using hiphive and hiPhive wrapper in your research please cite the following papers:

Fredrik Eriksson, Erik Fransson, and Paul Erhart<br/>
The Hiphive Package for the Extraction of High‐Order Force Constants by Machine Learning<br/>
Adv. Theory. Sim., 1800184 (2019)<br/>
doi: [10.1002/adts.201800184](https://onlinelibrary.wiley.com/doi/abs/10.1002/adts.201800184)

Jose J. Plata, Victor Posligua, Antonio M. Marquez, Javier Fdez Sanz, Ricardo Grau-Crespo<br/>
Charting the Lattice Thermal Conductivities of I–III–VI2 Chalcopyrite Semiconductors <br/>
Chem. Mater. 34, 2833-2841 (2022)<br/>
doi: https://doi.org/10.1021/acs.chemmater.2c00336

## License
[GNU](https://www.gnu.org/licenses/gpl-3.0.en.html)
