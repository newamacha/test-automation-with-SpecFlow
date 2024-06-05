using CalculatorApp;
using NUnit.Framework;
using TechTalk.SpecFlow.Assist;

namespace SpecflowTest.StepDefinitions
{
    [Binding]
    public sealed class CalculatorStepDefinitions
    {

        private readonly Calculator _calculator= new Calculator();
        private int _result;

        [Given("the first number is (.*)")]
        public void GivenTheFirstNumberIs(int number)
        {
            _calculator.FirstNumber= number;
        }

        [Given("the second number is (.*)")]
        public void GivenTheSecondNumberIs(int number)
        {
            _calculator.SecondNumber= number;
        }

        [When("the two numbers are added")]
        public void WhenTheTwoNumbersAreAdded()
        {
            _result = _calculator.Add();
        }

        [Then("the result should be (.*)")]
        public void ThenTheResultShouldBe(int result)
        {
            Assert.AreEqual(result, _result);
        }

        [When("the two numbers are multiplied")]
        public void WhenTheTwoNumbersAreMultiplied()
        {
            _result = _calculator.Multiply();
        }

        [Given("the first  and second number are")]
        public void GivenTheFirstAndSecondNumberAre(Table table)
        {
            var numbers = table.CreateSet<CalculatorInput>();
            _calculator.FirstNumber = numbers.First().firstNumber;
            _calculator.SecondNumber=numbers.First().secondNumber;
        }


        [Then("the result should be")]
        public void ThenTheResultShouldBe(Table table)
        {
            var numbers = table.CreateSet<CalculatorOutput>();
            _result = numbers.First().Result;
        }


    }

    public class CalculatorInput
    {
        public int firstNumber { get; set; }
        public int secondNumber { get; set; }
    }

    public class CalculatorOutput
    {
        public int Result { get; set; }
    }
}