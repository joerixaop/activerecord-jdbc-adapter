# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{activerecord-jdbc-adapter}
  s.version = "1.0.3"
  s.platform = Gem::Platform.new([nil, "java", nil])

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Sieger, Ola Bini and JRuby contributors"]
  s.date = %q{2010-11-29}
  s.description = %q{activerecord-jdbc-adapter is a database adapter for Rails' ActiveRecord
component that can be used with JRuby[http://www.jruby.org/]. It allows use of
virtually any JDBC-compliant database with your JRuby on Rails application.}
  s.email = %q{nick@nicksieger.com, ola.bini@gmail.com}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt", "LICENSE.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "LICENSE.txt", "lib/activerecord-jdbc-adapter.rb", "lib/arjdbc.rb", "lib/jdbc_adapter.rb", "lib/pg.rb", "lib/active_record/connection_adapters/derby_adapter.rb", "lib/active_record/connection_adapters/h2_adapter.rb", "lib/active_record/connection_adapters/hsqldb_adapter.rb", "lib/active_record/connection_adapters/informix_adapter.rb", "lib/active_record/connection_adapters/jdbc_adapter.rb", "lib/active_record/connection_adapters/jndi_adapter.rb", "lib/active_record/connection_adapters/mssql_adapter.rb", "lib/active_record/connection_adapters/mysql2_adapter.rb", "lib/active_record/connection_adapters/mysql_adapter.rb", "lib/active_record/connection_adapters/oracle_adapter.rb", "lib/active_record/connection_adapters/postgresql_adapter.rb", "lib/active_record/connection_adapters/sqlite3_adapter.rb", "lib/arel/engines/sql/compilers/db2_compiler.rb", "lib/arel/engines/sql/compilers/derby_compiler.rb", "lib/arel/engines/sql/compilers/h2_compiler.rb", "lib/arel/engines/sql/compilers/hsqldb_compiler.rb", "lib/arel/engines/sql/compilers/jdbc_compiler.rb", "lib/arel/engines/sql/compilers/mssql_compiler.rb", "lib/arel/visitors/db2.rb", "lib/arel/visitors/derby.rb", "lib/arel/visitors/hsqldb.rb", "lib/arel/visitors/mssql.rb", "lib/arjdbc/db2.rb", "lib/arjdbc/derby.rb", "lib/arjdbc/discover.rb", "lib/arjdbc/firebird.rb", "lib/arjdbc/h2.rb", "lib/arjdbc/hsqldb.rb", "lib/arjdbc/informix.rb", "lib/arjdbc/jdbc.rb", "lib/arjdbc/mimer.rb", "lib/arjdbc/mssql.rb", "lib/arjdbc/mysql.rb", "lib/arjdbc/oracle.rb", "lib/arjdbc/postgresql.rb", "lib/arjdbc/sqlite3.rb", "lib/arjdbc/sybase.rb", "lib/arjdbc/version.rb", "lib/arjdbc/db2/adapter.rb", "lib/arjdbc/derby/adapter.rb", "lib/arjdbc/derby/connection_methods.rb", "lib/arjdbc/firebird/adapter.rb", "lib/arjdbc/h2/adapter.rb", "lib/arjdbc/h2/connection_methods.rb", "lib/arjdbc/hsqldb/adapter.rb", "lib/arjdbc/hsqldb/connection_methods.rb", "lib/arjdbc/informix/adapter.rb", "lib/arjdbc/informix/connection_methods.rb", "lib/arjdbc/jdbc/adapter.rb", "lib/arjdbc/jdbc/callbacks.rb", "lib/arjdbc/jdbc/column.rb", "lib/arjdbc/jdbc/compatibility.rb", "lib/arjdbc/jdbc/connection.rb", "lib/arjdbc/jdbc/connection_methods.rb", "lib/arjdbc/jdbc/core_ext.rb", "lib/arjdbc/jdbc/discover.rb", "lib/arjdbc/jdbc/driver.rb", "lib/arjdbc/jdbc/extension.rb", "lib/arjdbc/jdbc/java.rb", "lib/arjdbc/jdbc/missing_functionality_helper.rb", "lib/arjdbc/jdbc/quoted_primary_key.rb", "lib/arjdbc/jdbc/railtie.rb", "lib/arjdbc/jdbc/rake_tasks.rb", "lib/arjdbc/jdbc/require_driver.rb", "lib/arjdbc/jdbc/type_converter.rb", "lib/arjdbc/mimer/adapter.rb", "lib/arjdbc/mssql/adapter.rb", "lib/arjdbc/mssql/connection_methods.rb", "lib/arjdbc/mssql/limit_helpers.rb", "lib/arjdbc/mssql/tsql_helper.rb", "lib/arjdbc/mysql/adapter.rb", "lib/arjdbc/mysql/connection_methods.rb", "lib/arjdbc/oracle/adapter.rb", "lib/arjdbc/oracle/connection_methods.rb", "lib/arjdbc/postgresql/adapter.rb", "lib/arjdbc/postgresql/connection_methods.rb", "lib/arjdbc/sqlite3/adapter.rb", "lib/arjdbc/sqlite3/connection_methods.rb", "lib/arjdbc/sybase/adapter.rb", "lib/generators/jdbc/jdbc_generator.rb", "lib/jdbc_adapter/rake_tasks.rb", "lib/jdbc_adapter/version.rb", "lib/arjdbc/jdbc/adapter_java.jar", "test/abstract_db_create.rb", "test/db2_simple_test.rb", "test/derby_migration_test.rb", "test/derby_multibyte_test.rb", "test/derby_simple_test.rb", "test/generic_jdbc_connection_test.rb", "test/h2_simple_test.rb", "test/has_many_through.rb", "test/helper.rb", "test/hsqldb_simple_test.rb", "test/informix_simple_test.rb", "test/jdbc_common.rb", "test/jndi_callbacks_test.rb", "test/jndi_test.rb", "test/manualTestDatabase.rb", "test/mssql_db_create_test.rb", "test/mssql_identity_insert_test.rb", "test/mssql_legacy_types_test.rb", "test/mssql_limit_offset_test.rb", "test/mssql_multibyte_test.rb", "test/mssql_simple_test.rb", "test/mysql_db_create_test.rb", "test/mysql_info_test.rb", "test/mysql_multibyte_test.rb", "test/mysql_nonstandard_primary_key_test.rb", "test/mysql_simple_test.rb", "test/oracle_simple_test.rb", "test/oracle_specific_test.rb", "test/pick_rails_version.rb", "test/postgres_db_create_test.rb", "test/postgres_drop_db_test.rb", "test/postgres_mixed_case_test.rb", "test/postgres_nonseq_pkey_test.rb", "test/postgres_reserved_test.rb", "test/postgres_schema_search_path_test.rb", "test/postgres_simple_test.rb", "test/postgres_table_alias_length_test.rb", "test/simple.rb", "test/sqlite3_simple_test.rb", "test/sybase_jtds_simple_test.rb", "test/activerecord/connection_adapters/type_conversion_test.rb", "test/activerecord/connections/native_jdbc_mysql/connection.rb", "test/db/db2.rb", "test/db/derby.rb", "test/db/h2.rb", "test/db/hsqldb.rb", "test/db/informix.rb", "test/db/jdbc.rb", "test/db/jndi_config.rb", "test/db/logger.rb", "test/db/mssql.rb", "test/db/mysql.rb", "test/db/oracle.rb", "test/db/postgres.rb", "test/db/sqlite3.rb", "test/models/add_not_null_column_to_table.rb", "test/models/auto_id.rb", "test/models/data_types.rb", "test/models/entry.rb", "test/models/mixed_case.rb", "test/models/reserved_word.rb", "test/models/string_id.rb", "test/models/validates_uniqueness_of_string.rb", "lib/arjdbc/jdbc/jdbc.rake", "src/java/arjdbc/derby/DerbyModule.java", "src/java/arjdbc/h2/H2RubyJdbcConnection.java", "src/java/arjdbc/informix/InformixRubyJdbcConnection.java", "src/java/arjdbc/jdbc/AdapterJavaService.java", "src/java/arjdbc/jdbc/JdbcConnectionFactory.java", "src/java/arjdbc/jdbc/RubyJdbcConnection.java", "src/java/arjdbc/jdbc/SQLBlock.java", "src/java/arjdbc/mssql/MssqlRubyJdbcConnection.java", "src/java/arjdbc/mysql/MySQLModule.java", "src/java/arjdbc/oracle/OracleRubyJdbcConnection.java", "src/java/arjdbc/postgresql/PostgresqlRubyJdbcConnection.java", "src/java/arjdbc/sqlite3/Sqlite3RubyJdbcConnection.java", "rakelib/compile.rake", "rakelib/package.rake", "rakelib/rails.rake", "rakelib/test.rake", "rails_generators/jdbc_generator.rb", "rails_generators/templates/config/initializers/jdbc.rb", "rails_generators/templates/lib/tasks/jdbc.rake"]
  s.homepage = %q{http://jruby-extras.rubyforge.org/activerecord-jdbc-adapter}
  s.rdoc_options = ["--main", "README.txt", "-SHN", "-f", "darkfish"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jruby-extras}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{JDBC adapter for ActiveRecord, for use within JRuby on Rails.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.2"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.6.2"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.6.2"])
  end
end
