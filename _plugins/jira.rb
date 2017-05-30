module Jekyll

	module JiraLinks

		def jira_link(content)
			content.gsub(/CAY-[0-9]+/) { |link|
				"<a class='jira' href='http://issues.apache.org/jira/" + link + "'>" + link + "</a>"
			}
		end

	end

end

Liquid::Template.register_filter(Jekyll::JiraLinks)