# To install the Clean Swift Xcode templates, run:
# > make install_templates

# To uninstall the Clean Swift Xcode templates, run:
# > make uninstall_templates

XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

TEMPLATES_DIR=Templates
SNIPPETS_DIR=Snippets

install_templates:
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	cp -R $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

install_codesnippets:
	mkdir -p $(XCODE_USER_SNIPPETS_DIR)
	rm -fR $(XCODE_USER_SNIPPETS_DIR)/$(SNIPPETS_DIR)
	cp -R $(SNIPPETS_DIR) $(XCODE_USER_SNIPPETS_DIR)

uninstall_templates:
	rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
