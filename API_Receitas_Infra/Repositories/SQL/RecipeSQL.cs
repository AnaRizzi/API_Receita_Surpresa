namespace API_Receitas_Infra.Repositories.SQL
{
    public static class RecipeSQL
    {
        public const string GET_ID_RECIPE = @"
            SELECT id FROM receitas
        ";

        public const string GET_ID_RECIPE_BY_TYPE = @"
            SELECT id FROM receitas
            WHERE categoria = @Tipo
        ";

        public const string GET_PARTIAL_RECIPE = @"
            SELECT
                id,
                nome,
                categoria,
                preparo,
                tempo_preparo,
                rendimento,
                dificuldade,
                imagem
            FROM receitas
            WHERE id = @Id
        ";

        public const string GET_INGREDIENT = @"
            SELECT
                ingrediente as ingrediente
            FROM ingredientes
            WHERE id_receita = @Id
            AND tipo = @TipoIng
        ";
    }
}
