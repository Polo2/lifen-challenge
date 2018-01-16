# Level 3

Not all shifts have the same duration.
Shifts happening on a saturday or a sunday last longer and are paid twice the normal fee.

Adapt the price computation to take these new rules into account.

# Answer - Level 3 :

New difficult about knowing the day for a shift.

I've used the Ruby Class Date, and the method .wday
(with one difficulty : sunday.wday = 0, not 7 ... )

Then, I've introduced an new dedicated method, to calculate sum for each worker
