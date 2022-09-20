{% import 'macros.j2' as macros %}

| host     | compiler                              | mpi                      | netcdf        | o_g        | os       | build       | u_pass          | u_fail          | s_pass            | s_fail            | e_pass             | e_fail             | nuopc_pass       | nuopc_fail       | artifacts link          |
|----------|---------------------------------------|--------------------------|---------------|------------|----------|-------------|-----------------|-----------------|-------------------|-------------------|--------------------|--------------------|------------------|------------------|-------------------------|
{% for r in result_rows -%}
| {{r.machine}} | {{r.compiler}} {{r.compiler_ver}} | {{r.mpi}} {{r.mpi_ver}}  | {{r.netcdf}}  | {{r.bopt}} | {{r.os}} | {{r.build}} | {{r.unit_pass}} | {{r.unit_fail}} | {{r.system_pass}} | {{r.system_fail}} | {{r.example_pass}} | {{r.example_fail}} | {{r.nuopc_pass}} | {{r.nuopc_fail}} | {{macros.hash_link(r)}} | 
{% endfor %}
