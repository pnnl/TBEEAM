Building Electrical Efficiency Analysis Model (BEEAM)
=====================================================

Fork Notice
-----------

This repository, TBEEAM, is a fork of the original BEEAM repository.

Most technical documentation, model names, and historical references in this codebase still use the name "BEEAM" because they originate from upstream materials. In TBEEAM, those references should generally be interpreted as referring to this fork unless noted otherwise.


Description
-----------

TBEEAM (Template-based Building Electrical Efficiency Analysis Model) is a [Modelica] library focused on simulation of building electrical systems using templates and harmonic power flow. TBEEAM has the following features in addition to BEEAM:

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

