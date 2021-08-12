# GWSkyNet: Pytorch
The main source of inspiration for this project is the paper by Cabero *et. al.* [here](https://arxiv.org/abs/2010.11829)

## Updates
- July 19th, 2021: Added Balan's notebook for generation of Bilby priors. 
- August 12th, 2021: Added some shell commands to get the injection data for binary neutron stars (refer Bayestar tutorial)

## Bayestar tutorial
- Tutorial for Running bayestar on injection data (priors), [here](https://lscsoft.docs.ligo.org/ligo.skymap/quickstart/bayestar-injections.html)

## Tasks 
- [ ] Make Training Dataset input values using the priors mentioned in the above paper using Bilby package 
- [ ] Generate the training dataset and add the noise inputs (Till here its common with the CNN we used for the Habbard et. al. implementation [here](https://colab.research.google.com/drive/15ysgVLkekNNomT2xp3F0d52l_qNvGNfd) and [here](https://colab.research.google.com/drive/193QYO1Lu59nSOK_xUm-LXDk5rBl-z6Iv))
- [ ] Generate the skymaps of the training instances using the **BAYESTAR** package
- [ ] Develop the model for the Network, make a few variations of the model for experimentation
- [ ] For test dataset we use the ligo-gracedb package and extract detected events and test our model
- [ ] Further, if possible try and improve the architecture or we can think of a new problem statement and adapt towards that

## Dependencies
- `ligo.skymap` 
- `astropy`
- `pytorch`
