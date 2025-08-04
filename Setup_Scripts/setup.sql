create or replace api integration git_int
    api_provider = git_https_api
    api_allowed_prefixes = ('https://github.com')
    enabled = true
    allowed_authentication_secrets = all;

CREATE OR REPLACE SECRET YOUR_SECRET
  TYPE = password
  USERNAME = 'sfc-gh-cromano'
  PASSWORD = ''; -- Put your secret here

CREATE OR REPLACE NETWORK RULE pypi_network_rule
MODE = EGRESS
TYPE = HOST_PORT
VALUE_LIST = ('pypi.org','raw.githubusercontent.com', 'pypi.python.org', 'pythonhosted.org',  'files.pythonhosted.org');

-- GPU Compute Pool
CREATE COMPUTE POOL notebook_GPU_S
MIN_NODES = 1
MAX_NODES = 1
INSTANCE_FAMILY = GPU_NV_S;

-- CPU Compute Pool
CREATE COMPUTE POOL notebook_CPU_S
  MIN_NODES = 1
  MAX_NODES = 4
  INSTANCE_FAMILY = CPU_X64_S;