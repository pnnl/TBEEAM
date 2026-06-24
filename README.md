Tempalte-Based Building Electrical Efficiency Analysis Model (TBEEAM)
=====================================================

TBEEAM is a Modelica library that facilitates the creation of simulation models of building electrical systems using templates. TBEEAM provides a set of example templates along with guidance on how to create new templates for other electrical system architectures. TBEEAM is designed for use with RDF2EMO, a python library that semi-automatically creates Modelica simulation models of whole-building electrical systems from RDF semantic models. RDF2EMO and TBEEAM enable users without significant Modelica or software development expertise to create whole-building simulation models.

Fork Notice
-----------

This repository, TBEEAM, is a fork of the original BEEAM repository.

Most technical documentation, model names, and historical references in this codebase still use the name "BEEAM" because they originate from upstream materials. In TBEEAM, those references should generally be interpreted as referring to this fork unless noted otherwise.


Description
-----------

TBEEAM (Template-Based Building Electrical Efficiency Analysis Model) is a [Modelica] library focused on simulation of building electrical systems using templates and harmonic power flow. TBEEAM has the following features in addition to BEEAM:

- Model a different set of electrical distribution architectures using templates
- Create new templates using template components for any additonal architectures


[Modelica]: https://www.modelica.org/ "Modelica"

Current Release
---------------

TBEEAM 1.0

Installation
------------

To install and use TBEEAM in Modelon Impact, clone this repository directly in the Modelon Impact environment and add it to the workspace.

To install and use TBEEAM with other Modelica simulation environment (OpenModelica, Dymola, Wolfram System Modeler, MapleSim, etc.), follow these instructions:

1. Download TBEEAM by cloning this repository (for legacy upstream releases, https://github.com/NatLabRockies/BEEAM)
2. Extract the archive at a convenient location
3. Go to the *File* menu and select *Open*
4. Navigate to and select `HPF/package.mo` (relative to the respository root directory)

The library will load and the user should be able to *HPF* listed in the library viewer.


Development Notes
-----------------

### Modelica Libraries ###

TBEEAM has been tested in the following Modelica environment:

- Modelon Impact 4.113.0

BEEAM (upstream) has been tested in other Modelica environments.

License
-------

BEEAM is licensed for use under the terms of the Berkeley Software Distribution 3-clause (BSD-3) license; see [LICENSE](LICENSE.md).


Copyright 2024 Battelle Memorial Institute

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

