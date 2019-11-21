# Creates a new release for a Maven artifact
# The function does the following:
#   1. Set version to new value
#   2. Commit
#   3. Tag
#   4. Set version to next SNAPSHOT
#   5. Commit

function mvn-version() {
    # Error checks
    [[ -z $1 ]] && echo "error: Requires a version parameter (for example 1.2.3)" && return 1
    [[ ! -f pom.xml ]] && echo "error: Not a Maven project" && return 1
    [[ ! -d .git ]] && echo "error: Not a Git repository" && return 1

    # TODO: Allow passing in special values, such as major, minor and revision/patch, similar to `npm version`

    # Preparations
    version=$1
    tag=v$version
    branch=$(git rev-parse --abbrev-ref HEAD)
    sha=$(git rev-parse HEAD)
    git checkout --quiet $sha

    # Parse 'major', 'minor' or 'patch'
    if [[ "$version" == "major" || "$version" == "minor" || "$version" == "patch" ]]; then
        type="$version"
        version=$(mvn --quiet help:evaluate -Dexpression=project.version -DforceStdout)
        version=$(bump-version $version $type)
    fi

    # Update the versions and commit
    mvn --quiet versions:set versions:set-scm-tag -DgenerateBackupPoms=false -DnewVersion=$version -DnewTag=$tag
    git add pom.xml
    git commit --quiet -m "$version"
    git tag $tag

    # Update the version with the next version
    if [[ "$version" == "major" || "$version" == "minor" ]]; then
        mvn --quiet versions:set versions:set-scm-tag -DgenerateBackupPoms=false -DnewVersion="$version-SNAPSHOT" -DnewTag="HEAD"
        git add pom.xml
        git commit --quiet -m "build: Prepare for the next development iteration"
        echo "Run 'git push origin $branch && git push origin $tag' to push the new version"
    else
        echo "Run 'git push origin $tag' to push the new version"
    fi
}

# Bumps a semver by either major, minor or patch
# Example: bump-version 4.1.8 minor
# -> 4.2.0

function bump-version() {
    version=$1
    type=$2

    major=$(echo "$version" | awk -F. '{printf("%d", $1)}')
    minor=$(echo "$version" | awk -F. '{printf("%d", $2)}')
    patch=$(echo "$version" | awk -F. '{printf("%d", $3)}')

    case $type in
        major)
            major=$((major + 1))
            minor=0
            patch=0
            ;;
        minor)
            minor=$((minor + 1))
            patch=0
            ;;
        patch)
            patch=$((patch + 1))
            ;;
        *)
            echo "Unknown type: $type"
            return 1
            ;;
    esac

    echo "$major.$minor.$patch"
}
