using ApiGen.Data.Entity;
using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace ApiGen.Data.DataAccess
{
    public class D2500CityDataAccess : DbFactoryBase, ID2500CityDataAccess
    {
        private readonly ILogger<dynamic> _logger;

        public D2500CityDataAccess(IConfiguration config, ILogger<dynamic> logger) : base(config)
        {
            _logger = logger;
        }

        /// <summary>
        /// Get All City Async
        /// </summary>
        /// <returns>IEnumerable<City></returns>
        public async Task<IEnumerable<E2500City>> GetAllAsync()
        {
            return await DbQueryAsync<E2500City>("SELECT id,Name FROM p2500City");
        }

        /// <summary>
        /// Create City Async
        /// </summary>
        /// <param name="city"></param>
        /// <returns></returns>
        public async Task<long> CreateAsync(E2500City city)
        {
            string sqlQuery = $@"INSERT INTO p2500City(Name)
                                 OUTPUT INSERTED.ID
                                 VALUES(@Name);
                                  ";

            return await DbQuerySingleAsync<long>(sqlQuery, city);
        }

        /// <summary>
        /// Update City Async
        /// </summary>
        /// <param name="city"></param>
        /// <returns></returns>
        public async Task<bool> UpdateAsync(E2500City city)
        {
            string sqlQuery = $@"UPDATE p2500City SET Name=@Name
                                 WHERE id=@id";

            return await DbExecuteAsync<bool>(sqlQuery, city);
        }

        /// <summary>
        /// Delete City Async
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<bool> DeleteAsync(object listid)
        {
            string sqlQuery = $@"DELETE FROM p2500City
                                WHERE id IN(" + listid + ")";

            return await DbExecuteAsync<bool>(sqlQuery, new { });
        }

        /// <summary>
        /// Get By Id Async
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public async Task<E2500City> GetByIdAsync(object id)
        {
            string sqlQuery = $@"SELECT * FROM p2500City
                                                    WHERE id = @id";
            return await DbQuerySingleAsync<E2500City>(sqlQuery, new { id });
        }

        /// <summary>
        /// Get Citys Pagination Async
        /// </summary>
        /// <param name="urlQueryParameters"></param>
        /// <returns></returns>
        public async Task<IEnumerable<E2500City>> GetPaginationAsync(UrlQueryParameters urlQueryParameters)
        {
            IEnumerable<E2500City> citys;
            StringBuilder query = new StringBuilder();
            query.Append("SELECT * FROM p2500City   " + urlQueryParameters.condition + "   ");
            query.Append("  ORDER BY id OFFSET " + urlQueryParameters.offset + " ROWS FETCH NEXT " + urlQueryParameters.limit + " ROWS ONLY");
             
             

            var parameters = new
            {
                offset = urlQueryParameters.offset,
                limit = urlQueryParameters.limit
            };

            citys = await DbQueryAsync<E2500City>(query.ToString(), parameters);

            return citys;
        } 

        /// <summary>
        /// Count City item
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public async Task<IEnumerable<object>> CountNumberItem(object condition)
        {
            string sqlQuery = "SELECT COUNT(1) as CountPage FROM p2500City " + condition;
            return await DbQueryAsync<object>(sqlQuery, new { condition });
        }

        /// <summary>
        /// Execute With Transaction Scope
        /// </summary>
        /// <returns></returns>
        public async Task<bool> ExecuteWithTransactionScope()
        {

            using (var dbCon = new SqlConnection(DbConnectionString))
            {
                await dbCon.OpenAsync();
                var transaction = await dbCon.BeginTransactionAsync();

                try
                {
                    // Do stuff here Insert, Update or Delete
                    Task q1 = dbCon.ExecuteAsync("<Your SQL Query here>");
                    Task q2 = dbCon.ExecuteAsync("<Your SQL Query here>");
                    Task q3 = dbCon.ExecuteAsync("<Your SQL Query here>");

                    await Task.WhenAll(q1, q2, q3);

                    //Commit the Transaction when all query are executed successfully

                    await transaction.CommitAsync();
                }
                catch (Exception ex)
                {
                    // Rollback the Transaction when any query fails
                    transaction.Rollback();
                    _logger.Log(LogLevel.Error, ex, "Error when trying to execute database operations within a scope.");

                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// Get All City Join City
        /// </summary>
        /// <returns></returns>
        public async Task<IEnumerable<object>> CustomJoin()
        {
            return await DbQueryAsync<object>("SELECT p2500City.*, Person.* FROM p2500City INNER JOIN Person on p2500City.id = Person.Id");
        }
    }
}