workflow "Pull to server after push" {
  on = "push"
  resolves = ["Pull webrequest"]
}

action "Pull webrequest" {
  uses = "swinton/httpie.action@master"
  args = ["GET", "trotline-reel.serveo.net/update.php"]
}
