#[
  Clean temporary files
]#
import strutils
mode = ScriptMode.Verbose      

exec "nim c -d:dynamic SourcesNim/prog.nim"

var root = getCurrentDir() 

cd(root & "/bin")
exec ".\\prog.exe"