firebase_repo="https://github.com/swensonhe/Kingfisher-XCFramework"
xcframeworks_repo="https://github.com/onevcat/Kingfisher"

latest_release_number () {
    # Github cli to get the latest release
    gh release list --repo $1 --limit 1 |
    # Regex to find the version number, assumes semantic versioning
    grep -Eo '[0-9]+\.[0-9]+\.[0-9]+' |
    # Take the first match in the regex
    head -1 || echo '0.0.0'
}

template_replace () {
    local file=$(cat $1)
    # Replace the template with the contents of the replacement file
    local result=${file//"$2"/"$3"}
    # Write the result back to the original file
    rm -f $1; touch $1; printf "$result" >> $1
}

commit_changes () {
    branch=$1
    git add .
    git commit -m "Updated Package.swift and sources for latest Kingfisher SDK"
    git push -u origin $branch
}

latest=$(latest_release_number $firebase_repo)
current=$(latest_release_number $xcframeworks_repo)
debug=$(echo $@ || "" | grep debug)

if [[ $latest != $current || $debug ]]; then
    echo "$current is out of date. Updating to $latest..."
    distribution="dist"
    sources="Sources"
    package="Package.swift"
    template="package_template.swift"
    curl -L https://github.com/onevcat/Kingfisher/releases/download/$latest/Kingfisher-$latest.zip -o Kingfisher-$latest.zip
    checksum=`swift package compute-checksum Kingfisher-$latest.zip`
    cp -f $template $package
    template_replace $package "{VERSION}" $latest;
    template_replace $package "{CHECKSUM}" $checksum;
    echo "Merging changes to Github..."
    commit_changes "main"
    echo "Creating release"
    echo "Release $latest" | gh release create --target "release/$latest" $latest "Kingfisher-7.3.2.zip"
else
    echo "$current is up to date."
fi

echo "Done"

