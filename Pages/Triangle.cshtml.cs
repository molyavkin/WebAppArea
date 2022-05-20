using CalculatingAreaLib;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace WebAppArea.Pages
{
    [IgnoreAntiforgeryToken]
    public class TriangleModel : PageModel
    {
        public string Message { get; set; } = "";
        public void OnGet()
        {
            
        }
        public void OnPost(double a, double b, double c)
        {
            Triangle triangle = new Triangle(a, b, c);  
            if (!triangle.IsExistShape())
            {
                Message = "Треугольник с такими сторонами не существует";
            }
            else
            {
                double areaTriangle = triangle.CalculateArea();
                if (triangle.IsRightAngled())
                {
                    Message = "Треугольник прямоугольный. ";
                }
                Message += $"Площадь треугольника = {areaTriangle:#,##0.00}";
            }

        }
    }
}
