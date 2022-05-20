using CalculatingAreaLib;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebAppArea.Pages
{
    [IgnoreAntiforgeryToken]
    public class IndexModel : PageModel
    {
        public string Message { get; set; } = "";
        public void OnGet()
        {

        }
        public void OnPost(double radius)
        {
            if (radius < 0)
            {
                Message = "Некорректный ввод";
            }
            else
            {
                Circle circle = new Circle(radius);
                double areaCircle = circle.CalculateArea();
                Message = $"Площадь круга = {areaCircle:#,##0.00}";
                
            }

        }
    }
}
