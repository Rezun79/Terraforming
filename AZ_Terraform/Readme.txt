main.tf - call modules, locals and data-sources to create all resources
variables.tf - contains declarations of variables used in main.tf
outputs.tf - Defines the values that the module provides as export and that can be queried by other modules.
locals.tf - Contains values that can be reused in other files in the module, but not outside the module.
providers.tf - Provider of the module’s resources. Here we indicate the version of the provider used