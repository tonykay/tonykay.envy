# tonykay.envy
Ansible Envy (ENVironments in Yaml) collection - single system ansible centric container orchestration


## Installing this collection

You can install the envy collection with the Ansible Galaxy CLI:

    ansible-galaxy collection install tonykay.envy

You can also include it in a `requirements.yml` file and install it with `ansible-galaxy collection install -r
requirements.yml`, using the format:

```yaml
---
collections:
  - name: tonykay.envy
    # If you need a specific version of the collection, you can specify like this:
    # version: v0.1.2
```

## Using this collection

The collection roles are largely abstracted by a series of playbooks in the `playbooks` directory.


