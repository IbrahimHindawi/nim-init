mode = ScriptMode.Verbose

echo "-------------------------------"
echo "executing nimscript"

#[
  OPTIONAL: C header include directories
  for when running with headers & compiling
  from c files is needed.
]# 
#switch("cincludes","../lib/cSpecOps/mathOps")
#switch("cincludes","../lib/cSpecOps/logOps")

# operating systems
#switch("os","android")

# cpu architectures
#switch("cpu","arm64")

#[
  compile time switching
]#
#switch("define","dynamic")
#switch("define","codegen")

if defined(dynamic):
  echo "building nim against dynamic library..."
elif defined(codegen):
  echo "building nim codegen..."

echo "-------------------------------"

# output directory
switch("outdir", "bin")