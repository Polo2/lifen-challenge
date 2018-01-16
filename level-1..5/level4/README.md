# Level 4

Our (fictionnal) business model is to price our service 5% on each shift.
In addition to that we also help the hospitals to fill in unassigned shifts with interim workers.

An interim is paid 480 € per shift.
We also take a fixed fee of 80 € on each shift for which we provided an interim worker.

Adapt the price computation to take these new rules into account and to calculate our commission.


# Level 5

about "workers" : no big change, I've just added a new case to the methode price_by_status ("interim")

about the new key "comission" :

I've used 2 local variables for the 2 fields needed.
Each local variable is calculated by enumerating arrays.

NB : By using implementations of Enumerable ('active_support/core_ext'), we culd use method .sum , easier to read.
