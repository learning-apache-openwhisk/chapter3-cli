wsk package create sample -p email michele@sciabarra.com
wsk package list
wsk package update sample -p email openwhisk@sciabarra.com
wsk package get sample -s
wsk package delete sample

