config.load_autoconfig(False)

c.aliases |= {
        "cs": "config-source"
        }
c.auto_save.session = True
c.colors.webpage.darkmode.enabled = True

config.set("colors.webpage.darkmode.enabled", False, "https://pony.town/")
config.set("colors.webpage.darkmode.enabled", False, "https://diep.io/")

c.colors.webpage.preferred_color_scheme = "dark"

c.completion.cmd_history_max_items = 0
c.completion.height = "20%"
c.completion.open_categories = [ "searchengines" ]
c.completion.shrink = True
c.completion.web_history.max_items = 0

c.content.blocking.enabled = True

config.set("content.notifications.enabled", True, "https://web.whatsapp.com/*")

c.content.pdfjs = True

c.downloads.location.directory = "~/downloads"
c.downloads.position = "bottom"

c.editor.command = [ "kitty", "nvim", "{}", ]
c.fileselect.folder.command = [ "kitty", "ranger", "--choosedir={}", ]
c.fileselect.handler = "external"
c.fileselect.multiple_files.command = [ "kitty", "ranger", "--choosefiles={}", ]
c.fileselect.single_file.command = [ "kitty", "ranger", "--choosefile={}", ]

c.fonts.default_family = "Monocraft"
c.fonts.hints = "bold default_size Monocraft"
c.fonts.web.family.fixed = "Monocraft"

c.hints.mode = "number"

c.input.insert_mode.auto_leave = False

c.tabs.new_position.unrelated = "next"
c.tabs.title.format = "{audio}{relative_index}: {current_title}"

c.url.default_page = "about:blank"
c.url.searchengines |= {
        "y:": "https://youtube.com/search?q={}",
        "img:": "https://duckduckgo.com/?ia=images&t=h_&iax=images&q={}",
        "wh:": "https://wallhaven.cc/search?q={}&categories=100",
        "mc:": "https://minecraft.wiki/?search={}",
        "w:": "https://en.wikipedia.org/wiki/Special:Search?search={}",
        "a:": "https://wiki.archlinux.org/index.php?search={}",
        }
