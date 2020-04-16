# 9750

Class project for STA 9750.

## principles:

- use longer, descriptive names, e.g. `very_descriptive_name`
- avoid overwriting the same names
- avoid mutating data
- 

## Order we need to work in:

- Need to understand data 
  - very optional: address -> coordinates for a choropleth (heat map of boroughs)

- Hypotheses and questions to answer:
  - Price prediction:
    - square footage
    - building class (commercial, multifamily, single-family)
    - location: borough, neighborhood, block, 
  - where are most transactions?
  - which neighborhoods are most expensive?
  - is there a premium for single-family homes?
  - are most sales closed on weekends? weekdays? <- ACH

- Need to clean 
  - remove x1? index by borough
  - sales price is a character vector -> numeric
    - need to exclude nonsense sales (e.g. at ~$0)
    - looking for arms-length transactions
    - histogram
  - lubridate the sales date
  - square feet -> numeric
  - Borough is not numeric -> unordered categorical
    1. Manhattan
    2. Bronx
    3. Brooklyn
    4. Queens
    5. Staten Island
  - Tax Class at Present -> categorical, probably unordered
  - Block, lot, -> unordered categorical
  
- Dataviz 
  - histograms
  - correlation matrix
  - choropleth (if ACH can get it)
  - dotplots? scatterplots?

- feature engineer
  - remove commercial?
  - look at number of units
  - categorical predictors in neighborhoods

- Dataviz on new features
- regressions 
- Dataviz of regressions
- Analysis and conclusions
