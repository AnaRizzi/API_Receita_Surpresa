using API_Receitas_Domain.Interfaces;
using API_Receitas_Domain.Services;
using API_Receitas_Infra.Repositories;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace API_Receitas_Infra
{
    public static class IoC
    {
		private const string CONNECTION = "ConnectionMySql";

		public static IServiceCollection ConfigureContainer(this IServiceCollection services, IConfiguration configuration)
		{
			RegisterConfiguration(services, configuration);
			RegisterServices(services);
			RegisterRepositories(services, configuration);
			return services;
		}

		public static void RegisterConfiguration(IServiceCollection services, IConfiguration configuration)
		{
		}

		public static void RegisterServices(IServiceCollection services)
		{
			services.AddScoped<IRecipeService, RecipeService>();
		}

		public static void RegisterRepositories(IServiceCollection services, IConfiguration configuration)
		{
			var connectionString = configuration.GetValue<string>(CONNECTION);

			services.AddScoped<IRecipeRepository>(_ => new RecipeRepository(connectionString));
		}

	}
}
