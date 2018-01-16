# Intro

We are building an online night-shift manager. Let's call it Planning de Garde :)

Here is our plan:
- a hospital schedule shifts for all their plannings
- shift workers manage their shifts

# Level 1

Once the hospital has scheduled all shifts, it want to know how much each shift worker is supposed to be paid.
Each shift is paid according to the worker assigned to the shift.

Write code that generates `output.json` from `data.json`



# Answer Level 1

In file main.rb :

- data.json is parsed by a method (extract_datas_from_json), which returns a hash

- this "data-as-hash" is changed into a "output-as-hash", by iterating on arrays

- output.json is written by an other method (write_output_as_json)



