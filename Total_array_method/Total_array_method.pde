int[] numbers = {2, 4, 6, 8};

int sumarray(int[] numbers)
{
  int total = 0;

  for (int i = 0; i < numbers.length; i++)
  {
    total = total + numbers[i];
  }

  return total;
}

void setup()
{
  int answer = sumarray(numbers);
  println(answer);
}
