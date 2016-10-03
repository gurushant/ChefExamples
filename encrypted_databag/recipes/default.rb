
pwds= Chef::EncryptedDataBagItem.load("prod", "passwords")
print pwds["vm-1"]
print pwds["vm-2"]
