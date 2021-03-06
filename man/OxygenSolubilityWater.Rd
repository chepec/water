% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oxygen-solubility.R
\name{OxygenSolubilityWater}
\alias{OxygenSolubilityWater}
\title{Oxygen solubility in water}
\usage{
OxygenSolubilityWater(temperature)
}
\arguments{
\item{temperature}{numeric, vector. In degrees Celsius.}
}
\value{
a dataframe with the following columns:
    + "temperature" same as the supplied temperature
    + "g/cm-3" oxygen solubility expressed as gram per cubic cm
    + "mg/L" ditto expressed as milligram per litre
    + "mol/L" ditto expressed as moles per litre (molarity)
    + "permoleculewater" number of O2 molecules per molecule of water
   Note: mg/L is equivalent to ppm by weight (since water has approx
   unit density in the temperature range 0-50 Celsius).
}
\description{
Oxygen solubility in water  which is in contact with
air saturated with water vapour, as a function of
temperature and at a total pressure of 760 torr.
}
\details{
Some background: as the temperature of a gasesous solution is raised the
gas is driven off until complete degassing occurs at the boiling point
of the solvent. This variation of solubility with temperature can be
derived from thermodynamic first principles.
But the variation of oxygen solubility in water cannot be represented by a
simple relationship (derived from thermodynamic first principles), and so
more complicated expressions which are fitted to empirical data have
to be used.

Hitchman, Measurement of Dissolved Oxygen, 1978 reproduce a table by
Battino and Clever (1966) that presents experimental values of the
so-called Bunsen absorption coefficient (this is the volume of gas, at 0 C
and 760 torr, that, at the temperature of measurement, is dissolved in one
volume of the solvent when the partial pressure of the gas is 760 torr)
recorded by eleven research groups up until 1965. The standard error of the
 mean value is never greater +-0.5%. The mean values from this table are
probably accurate enough for most applications.
Hitchman notes that the data in this table can be fitted by two forms of
equations: one form obtained from Henry's law (under the restriction that
the partial pressure of the gas remains constant), and another form by
describing the variation with temperature by fitting a general power series.
The latter approach is used in this function.

Hitchman chooses to fit a fourth degree polynomial, and found that the
square of the correlation coefficient was 0.999996.

For more background and detailed derivation of the formula used here,
see section 2.2 (pp. 11) in Hitchman.

This formula is strictly speaking only valid for 0 < T < 50 celsius.
The function will return values outside this range, but with a warning.
}
\examples{
\dontrun{
OxygenSolubilityWater(22)
OxygenSolubilityWater(c(2, 7, 12, 30))
}
}
