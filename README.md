# Nashville Waterways E. coli Predictive Modeling Project

The deployed website with the model can be found here: http://ecoli.rayoung.org/index.html

## Introduction

This project currently provides a modelled prediction of waterborne harmful microbial concentration at one river site in Nashville, with plans to expand the model to
include other sites on the Harpeth river and Mill Creek. Conventional water quality sampling can only provide readings from the past couple of days, which is inadequate
for the purposes of advising recreational usage. Real time data are retrieved from USGS and local weather stations to make predictions based on a model built from past
E. coli samples and environmental conditions, and updated on an hourly basis with github actions on the project website hosted with github pages. 

## Installation

The project is based on R markdown files being knitted periodically by instances from github actions, and the specification files are in the .github/workflows/ folder.
It is necessary to instruct the github actions instance to install all of the required packages for the R markdown files in order for the website page to be compiled
correctly. Specifically, the render.r script is ran by the workflow instance which compiles the R markdown files into html files for the website. The content of the
website pages are contained in the R markdown files and whatever desired changes can be made from there in most instances without having to touch the workflow file.

