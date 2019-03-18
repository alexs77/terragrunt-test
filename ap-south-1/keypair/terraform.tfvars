terragrunt = {
  terraform {
    source = "git::git@github.com:alexs77/terraform-aws-key_pair.git"

    #source = "git::git@gitlab.com:alexs-77/terraform-aws-key_pair.git"
    #source = "git::ssh://git@gitlab.com/alexs-77/terraform-aws-key_pair.git"

    #source = "git::git@bitbucket.org:alexs77/terraform-aws-key_pair.git"
    #source = "git::ssh://git@bitbucket.org/alexs77/terraform-aws-key_pair.git"
    #source = "bitbucket.org/alexs77/terraform-aws-key_pair"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }

  dependencies {
    paths = ["../vpc"]
  }
}

key_name = "qa-key"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4zZwGHisuoCBH43zBZv/TqXrbTkyDFUk8vgK/cwE6lxYYBpFaovXtwT00IDWd2OjkuFhj4AucuDmWtBpo4oQ1IYJI+osTQi5JnzKTdiQ1Hjzf39FHNshZ4Tk/NHVrfzdS5062DDJ6vgpIHZ4lQK8mkrEKSm4v8OCUVG5g6NVwcCzRuY4H3M/5xqLd5eCHfhU6iY2I8uk32GaPkPJauG7MOtmbzPVTGbcTo4nZX3Trmpc0uHff6C6olMv58aHfmKeXjLE8rBPMGV9IfmRqsUPfsfJp3nQyjSFpIFm+nSUE4QrKUtCOyq7QL8kWC5OsmumWrTny1h9EIldzOcRS3T/Z Example key - do NOT use it for real"


