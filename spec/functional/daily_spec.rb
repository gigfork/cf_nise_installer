describe :Daily do
  it "" do
    expect(
      system("wget https://raw.github.com/yudai/cf_nise_installer/ci/scripts/bootstrap.sh") &&
      system("chmod u+x bootstrap.sh") &&
      system("PATH='/usr/bin/local:/usr/bin:/bin' BRANCH='ci' ./bootstrap.sh")
    ).to be_true
  end
end
