int firstnumber(int[] list)
{
  return list[1];
}

void setup()
{
  int[] numbers = {5, 15, 25, 35};
  int answer = firstnumber(numbers);
  println(answer);
}
