using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace API_Receitas_Domain.Models
{
    public class Recipe
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Categoria { get; set; }
        public string Tempo_Preparo { get; set; }
        public string Rendimento { get; set; }
        public string Dificuldade { get; set; }
        public IEnumerable<string> Ingredientes { get; set; }
        public IEnumerable<string> IngredientesRecheio { get; set; }
        public IEnumerable<string> IngredientesCobertura { get; set; }
        public string Preparo { get; set; }
        public string Imagem { get; set; }
    }
}
