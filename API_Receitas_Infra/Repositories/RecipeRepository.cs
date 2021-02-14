using API_Receitas_Domain.Interfaces;
using API_Receitas_Domain.Models;
using MySql.Data.MySqlClient;
using Dapper;
using System.Data;
using System.Linq;
using API_Receitas_Infra.Repositories.SQL;
using System;

namespace API_Receitas_Infra.Repositories
{
    public class RecipeRepository : IRecipeRepository
    {
        private IDbConnection _connection;

        public RecipeRepository(string connectionString)
        {
            _connection = new MySqlConnection(connectionString);
        }

        public int GetIdRecipe()
        {
            var listaId = _connection.QueryAsync<int>(RecipeSQL.GET_ID_RECIPE)
                .Result.ToList();
            var aleatorio = new Random().Next(0, listaId.Count()-1);

            return listaId[aleatorio];
        }

        public int GetIdRecipeByType(string type)
        {
            var listaId = _connection.QueryAsync<int>(RecipeSQL.GET_ID_RECIPE_BY_TYPE, new
            {
                Tipo = type
            }).Result.ToList();
            var aleatorio = new Random().Next(0, listaId.Count() - 1);

            return listaId[aleatorio];
        }

        public Recipe GetCompleteRecipe(int id)
        {
            var recipe = _connection.QueryFirstOrDefaultAsync<Recipe>(RecipeSQL.GET_PARTIAL_RECIPE, new
            {
                Id = id
            }).Result;

            if (recipe != null)
            {
                recipe.Ingredientes = _connection.QueryAsync<string>(RecipeSQL.GET_INGREDIENT, new
                {
                    Id = id,
                    TipoIng = "principal"
                }).Result;

                recipe.IngredientesRecheio = _connection.QueryAsync<string>(RecipeSQL.GET_INGREDIENT, new
                {
                    Id = id,
                    TipoIng = "recheio"
                }).Result;

                recipe.IngredientesCobertura = _connection.QueryAsync<string>(RecipeSQL.GET_INGREDIENT, new
                {
                    Id = id,
                    TipoIng = "cobertura"
                }).Result;
            }

            return recipe;
        }
    }
}
