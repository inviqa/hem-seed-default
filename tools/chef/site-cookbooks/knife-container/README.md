knife-container Cookbook
========================
Install the Container tool for Knife along with berkshelf.

Usage
-----
#### knife-container::default

e.g.
Just include `knife-container` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[knife-container]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this s$

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
