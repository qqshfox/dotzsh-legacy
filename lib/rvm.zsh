# get the name of the branch we are on

function rvm_prompt_info() {
  ruby_version=$(rvm-prompt i v p g s 2> /dev/null) || return
  echo "($ruby_version)"
}
