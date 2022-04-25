## Configure jupyter hub for all users

1. In root, use pip to install Jupyter hub
2. Replace jupyterhub_config.py
3. Enable port

```
firewall-cmd --zone=public --permanent --add-port=8010/tcp
firewall-cmd --reload
```
