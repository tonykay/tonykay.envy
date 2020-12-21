ansible-galaxy collection install community.docker
mkdir -p ~/.ansible/collections/ansible_collections/tonykay/envy
git clone https://github.com/tonykay/tonykay.envy.git ~/.ansible/collections/ansible_collections/tonykay/envy
ansible-playbook ~/.ansible/collections/ansible_collections/tonykay/envy/playbooks/setup.yml
