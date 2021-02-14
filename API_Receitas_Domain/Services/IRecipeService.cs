using API_Receitas_Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Receitas_Domain.Services
{
    public interface IRecipeService
    {
        Recipe GetRecipe();
        Recipe GetRecipeByType(string type);
        Recipe GetCompleteRecipe(int id);
    }
}
