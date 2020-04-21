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
  - where are most transactions? (code committed)
  - which neighborhoods are most expensive? (code committed)
  - is there a premium for single-family homes?
      -Idea for answer: Perform two regressions, one for single-family homes, and one for non-single family homes. 
                        Compare the beta1's: these are the rates of change of price with respect to sqft. 
                        A higher beta1 (price differential) for single-family homes would then suggest the existence of a premium.  
  - are most sales closed on weekends? weekdays? <- ACH

- Need to clean 
  - remove x1? index by borough (check)
  - sales price is a character vector -> numeric (check)
    - need to exclude nonsense sales (e.g. at ~$0) (check)
    - looking for arms-length transactions
    - histogram
  - lubridate the sales date
  - square feet -> numeric (check)
  - Borough is not numeric -> unordered categorical (check)
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
