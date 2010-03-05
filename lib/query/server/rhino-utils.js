importPackage(java.io, java.lang);

var stdin=null;

// We can't reference System.in because "in"
// is a JS keyword, so we use the brackets to
// dereference the "in" member of System.
function readLine() {
  if(stdin==null) {
    stdin=new BufferedReader(
        new InputStreamReader(
          System['in']));
  }
  return stdin.readLine();
}
