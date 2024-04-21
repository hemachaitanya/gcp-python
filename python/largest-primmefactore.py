def factors(number):
    for index in range(2,number): 
        if number % index == 0:
            yield index # yield is a generator
number_to_be_checked = 13195
print(list(factors(number_to_be_checked)))
prime_factors = filter(is_prime, factores(number_to_be_checked))
print(list(prime_factors)[-1])