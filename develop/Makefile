# To install the Personal Xcode templates, run:
# > make install_project_templates

# To uninstall Personal Xcode templates, run:
# > make uninstall_project_templates

XCODE_USER_PROJECT_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/Project\ Templates
# XCODE_USER_SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets

PROJECT_TEMPLATES_DIR=Personal
LOCAL_PROJECT_TEMPLATES_DIR=templates/project/Personal
# SNIPPETS_DIR=Snippets

install_project_templates:
	mkdir -p $(XCODE_USER_PROJECT_TEMPLATES_DIR)
	rm -fR $(XCODE_USER_PROJECT_TEMPLATES_DIR)/$(PROJECT_TEMPLATES_DIR)
	cp -R $(LOCAL_PROJECT_TEMPLATES_DIR) $(XCODE_USER_PROJECT_TEMPLATES_DIR)

# install_codesnippets:
# 	mkdir -p $(XCODE_USER_SNIPPETS_DIR)
# 	rm -fR $(XCODE_USER_SNIPPETS_DIR)/$(SNIPPETS_DIR)
# 	cp -R $(SNIPPETS_DIR) $(XCODE_USER_SNIPPETS_DIR)

uninstall_project_templates:
	rm -fR $(XCODE_USER_PROJECT_TEMPLATES_DIR)/$(TEMPLATES_DIR)
