function sl {
	 python ~/code/SlaCLI/slacli.py list "$@"
}

function slc {
	 python ~/code/SlaCLI/slacli.py list -c
}

function slu {
	 python ~/code/SlaCLI/slacli.py list -u
}

function sr {
	 python ~/code/SlaCLI/slacli.py read "$@"
}

function ss {
	 python ~/code/SlaCLI/slacli.py send "$@"
}

function ssj {
	 python ~/code/SlaCLI/slacli.py send @jae "$@"
}

function srj {
	 python ~/code/SlaCLI/slacli.py read @jae "$@"
}
