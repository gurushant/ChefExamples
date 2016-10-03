1.Before we can create an Encrypted Data Bag, we need a secret key. We.ll use openssl to generate a random secret.
	openssl rand -base64 512 > secret_key

2.knife data bag create .secret-file ./secret_key prod passwords
	put 	
		{
		"id": "passwords",
		"vm-1": "123",
		"vm-2": "123"
		}
3. knife data bag show prod passwords
4. scp secret_file into /etc/chef/encrypted_data_bag_secret on node/chef client
5. copy following lines into the default.rb file of cookbook
	
	pwds= Chef::EncryptedDataBagItem.load("prod", "passwords")
	print pwds["vm-1"]
	print pwds["vm-2"]

6. Copy prod data bag inside chefs data bag
