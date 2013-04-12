oh-my-zsh Cookbook
===========================
This cookbook installs [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh).

Requirements
------------

- Chef 11

Attributes
----------

#### oh-my-zsh::users
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['oh-my-zsh']['users']</tt></td>
    <td>Hash</td>
    <td>Hash of usernames to options (see Usage below)</td>
    <td><tt>{}</tt></td>
  </tr>
</table>

Usage
-----
#### oh-my-zsh::default

Just include `oh-my-zsh` in your node's `run_list` and use the `oh_my_zsh`
LWRP.

#### oh-my-zsh::users

Set `['oh-my-zsh']['users']` and include `oh-my-zsh::users` in your node's
`run_list`:

```json
{
  "oh-my-zsh": {
    "users": {
      "vagrant": {
        "theme": "gentoo",
        "plugins": [ "git" ],
        "zsh_options": [
          "export EDITOR=vim",
          "setopt NO_CORRECT_ALL"
        ]
      }
    }
  }
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
* [Michael Paul Thomas Conigliaro](http://conigliaro.org)
