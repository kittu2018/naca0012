/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  v2012                                 |
|   \\  /    A nd           | Website:  www.openfoam.com                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    location    "0";
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 0.000895;

boundaryField
{
    inlet
    {
        type            calculated;
        value           uniform 0;
    }

    open
    {
        type            nutUSpaldingWallFunction;
        value           uniform 0;
    }

    symmetry
    {
        type            symmetry;
    }
    
    outlet
    {
        type            calculated;
        value           uniform 0;
    }

    airfoil_wing
    {
        type            nutUSpaldingWallFunction;
        value           uniform 0;
    }
}


// ************************************************************************* //
