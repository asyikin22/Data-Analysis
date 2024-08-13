print('BMI calculator')

#BMI = (weight_kg)/((height_meter)**2)

name = input('What is your name? ---> ')
weight = float(input('Please enter your weight in KG ---> '))
height = float(input("Please enter your height in m ---> "))
BMI = (weight)/(height ** 2)

print(f'Your weight is {weight}kg and your height is {height}m')
print(f"Your BMI is: {BMI:.2f}")

#Underweight	<18.50
#Healthy Weight Range	18.50 - 24.99
#Overweight	25.00 - 29.99
#Obese	30 or more

if BMI > 0:
    if(BMI < 18.5):
        print(f'{name}, you are underweight, please eat more, love')
    elif(BMI < 24.99):
        print(f'{name}, you have healthy weight range, keep it up!')
    elif(BMI < 29.99):
        print(f'{name}, you are overweight, please watch what you eat')
    elif(BMI > 30):
        print(f'{name}, you are Obese! This is not healthy, babe. Go get some help.')
    else:
        print(f"Please enter valid input,{name}")