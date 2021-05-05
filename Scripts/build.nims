#[
  Clean temporary files
]#
import strutils
mode = ScriptMode.Verbose      

#exec "nim c -d:dynamic -d:Direct3D11 SourcesNim/prog.nim"
exec "nim c -d:dynamic -d:Direct3D11 SourcesNim/prog.nim"