function git_change_author --description "Change the author of a specific git commit"
    if not command -v perl >/dev/null
        echo "Error: perl is not installed. Please install it to use this function." >&2
        return 1
    end

    # Check argument count
    if test (count $argv) -ne 2
        echo "Usage: git_change_author <author> <commit>" >&2
        return 1
    end

    set -l author $argv[1]
    set -l author_name (echo $author | perl -wlne '/^(.*?)\s*<.*>$/ and print $1')
    set -l author_email (echo $author | perl -wlne '/^.*\s*<(.*)>$/ and print $1')
    set -l commit (git rev-parse --short $argv[2] 2>/dev/null)
    
    # Check if commit exists
    if test $status -ne 0
        echo "Error: Invalid commit '$argv[2]'" >&2
        return 1
    end

    # Perform the rebase operation
    begin
        env GIT_SEQUENCE_EDITOR="sed -i -e 's/^pick $commit/edit $commit/'" git rebase -i $commit~1^^
        and env GIT_COMMITTER_NAME="$author_name" GIT_COMMITTER_EMAIL="$author_email" git commit --amend --no-edit --author="$author"
        and git rebase --continue
    end 2>/dev/null >/dev/null

    if test $status -eq 0
        echo "$author_name is now the author of $commit. You're officially an asshole."
    else
        echo "Error: Failed to change commit author. Repository may be in an inconsistent state." >&2
        return 1
    end
end