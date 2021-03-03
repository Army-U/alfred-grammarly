on run argv
  tell application "chrome"
    open location "https://app.grammarly.com/"
    repeat until (loading of front window's active tab is false)
    end repeat
    delay 3
    execute front window's active tab javascript "document.querySelector('[data-name=\"new-doc-add-btn\"]').click()"
    delay 3
    execute front window's active tab javascript "document.querySelector('.ql-editor').innerHTML = '<p>" & (the clipboard) & "</p>'"
  end tell
end run
