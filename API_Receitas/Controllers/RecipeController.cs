using API_Receitas_Domain.Enum;
using API_Receitas_Domain.Services;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;

namespace API_Receitas.Controllers
{
    [ApiController]
    [Route("receita")]
    public class RecipeController : ControllerBase
    {
        private readonly IRecipeService _recipeService;

        public RecipeController(IRecipeService recipeService)
        {
            _recipeService = recipeService;
        }

        [Route("todas")]
        [HttpGet]
        public IActionResult GetReceita()
        {
            
            var recipe = _recipeService.GetRecipe();
            
            var response = JsonConvert.SerializeObject(recipe);

            return Ok(response);
        }

        [Route("doces")]
        [HttpGet]
        public IActionResult GetReceitaDoce()
        {

            var recipe = _recipeService.GetRecipeByType(RecipeType.Doce.ToString());

            var response = JsonConvert.SerializeObject(recipe);

            return Ok(response);
        }

        [Route("salgadas")]
        [HttpGet]
        public IActionResult GetReceitaSalgada()
        {

            var recipe = _recipeService.GetRecipeByType(RecipeType.Salgado.ToString());

            var response = JsonConvert.SerializeObject(recipe);

            return Ok(response);
        }

        [Route("{id}")]
        [HttpGet]
        public IActionResult GetReceitaPorId(string id)
        {
            try
            {
                int idRecipe = Convert.ToInt32(id);
            }
            catch
            {
                return NotFound(new { codigo = 404, descricao = "id inválido" });
            }

            var recipe = _recipeService.GetCompleteRecipe(Convert.ToInt32(id));

            if (recipe == null)
            {
                return NotFound(new { codigo = 404, descricao = "receita não encontrada" });
            }

            var response = JsonConvert.SerializeObject(recipe);

            return Ok(response);
        }
    }
}
