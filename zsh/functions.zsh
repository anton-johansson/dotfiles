# Creates a new release for a Maven artifact
# The function does the following:
#   1. Detach current head
#   2. Set version
#   3. Commit
#   4. Tag
#   5. Return to the master branch

function mvn-version() {
    # Error checks
    [[ -z $1 ]] && echo "Requires a version parameter (for example 1.2.3)" && return 1

    # TODO: Allow passing in special values, such as major, minor and revision/patch, similar to `npm version`

    # Preparations
    version=$1
    tag=v$version
    branch=$(git rev-parse --abbrev-ref HEAD)
    sha=$(git rev-parse HEAD)
    git checkout --quiet $sha

    # Update the versions and commit
    mvn --quiet versions:set versions:set-scm-tag -DgenerateBackupPoms=false -DnewVersion=$version -DnewTag=$tag
    git add pom.xml
    git commit --quiet -m "$version"
    git tag $tag

    # Return to the master branch
    git checkout --quiet master

    # TODO: If the branch is `master`, update minor to next version and commit

    echo "Run 'git push --tags' to push the new version"
}
