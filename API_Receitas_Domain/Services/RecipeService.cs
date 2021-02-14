using API_Receitas_Domain.Interfaces;
using API_Receitas_Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Receitas_Domain.Services
{
    public class RecipeService : IRecipeService
    {
        private readonly IRecipeRepository _recipeRepository;

        public RecipeService(IRecipeRepository repository)
        {
            _recipeRepository = repository;
        }

        public Recipe GetRecipe()
        {
            var idRecipe = _recipeRepository.GetIdRecipe();

            var recipe = GetCompleteRecipe(idRecipe);

            return recipe;
        }

        public Recipe GetRecipeByType(string type)
        {
            var idRecipe = _recipeRepository.GetIdRecipeByType(type);

            var recipe = GetCompleteRecipe(idRecipe);

            return recipe;
        }

        public Recipe GetCompleteRecipe(int id)
        {
            var recipe = _recipeRepository.GetCompleteRecipe(id);

            return recipe;
        }
    }
}
