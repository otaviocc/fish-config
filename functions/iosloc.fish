function iosloc
    cdios
    and lokalise2 file download \
        --project-id "YOUR-PROJECT-ID" \
        -t "YOUR-TOKEN" \
        --format strings \
        --directory-prefix "%LANG_ISO%.lproj" \
        --unzip-to ./Resources/Localizations/
    and swiftgen
end
