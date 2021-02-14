using API_Receitas_Domain.Models;
using System.Threading.Tasks;

namespace API_Receitas_Domain.Interfaces
{
    public interface IRecipeRepository
    {
        int GetIdRecipe();
        int GetIdRecipeByType(string type);
        Recipe GetCompleteRecipe(int id);
    }
}
