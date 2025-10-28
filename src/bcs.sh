api="https://api.bcs.ru"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"
function dividends() {
		curl --request GET \
		--url "$api/divcalendar/v1/partner/dividends?order=0&sorting=2&actual=1&year=$(date +%Y)&foreign=${1}" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function online_quote() {
		curl --request GET \
		--url "$api/udfdatafeed/api/online/quote/leader" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function search_group() {
		curl --request GET \
		--url "$api/udfdatafeed/v1/search/group?search=${1}" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function bond_list_start() {
		curl --request GET \
		--url "$api/webapi/api/bond" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function bond_by_lastValue() {
		curl --request GET \
		--url "$api/webapi/api/bond?limit=20&sort=shortName&order=asc&type=corporation&my=false&lastValue=${1}" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function info_by_ticker() {
		curl --request GET \
		--url "$api/webapi/api/v1/forecast/consensus/russian?ticker=${1}" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function list_by_type() {
		curl --request GET \
		--url "$api/udfdatafeed/v1/search?search=&type=${1}&limit=50&skip=${2}&onlywithdata=true" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function consensus_list() {
		curl --request GET \
		--url "$api/webapi/api/v1/forecast/consensus/russian?order=asc&sorting=name&recommendation=${1}" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}


