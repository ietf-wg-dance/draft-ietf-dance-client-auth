SOURCE  = \
	draft-huque-dane-client-cert

all:	$(SOURCE).txt $(SOURCE).html

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml --text

$(SOURCE).html:	$(SOURCE).xml
	xml2rfc $(SOURCE).xml --html

clean:
	rm -rf $(SOURCE).txt $(SOURCE).html
