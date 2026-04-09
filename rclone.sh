# interactive setup
# note: for google drive, suggest to use your own client_id to prevent rate limits
# ref: https://rclone.org/drive/#making-your-own-client-id
rclone config

# list configured remotes
rclone listremotes

# list all directories
rclone lsd remote:

# list all directories at path
rclone lsd remote:path

# list all files recursively at path
rclone ls remote:path

# sync (destructively update destination!)
# --dry-run to double check first
rclone sync --dry-run SOURCE remote:DESTINATION

# sync (destructively update destination!)
# interactively check each action before execution
rclone sync --interactive SOURCE remote:DESTINATION

# sync (destructively update destination!)
# sync current dir while showing progress
rclone sync --progress . remote:"some/destination folder"

