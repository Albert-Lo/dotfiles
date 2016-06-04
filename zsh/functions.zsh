function =
{
  echo "$@" | bc -l
}

function server
{
  local port="${1:-8000}"
  python -m SimpleHTTPServer $port
}
