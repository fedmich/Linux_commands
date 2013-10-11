sudo nano edit /etc/apache2/sites-available/default

-----

ScriptAlias /cgi-bin/ /var/www/cgi-bin/
<Directory "/var/www/cgi-bin">
	AllowOverride None
	Options +ExecCGI -MultiViews +SymLinksIfOwnerMatch
	Order allow,deny
	Allow from all
	AddHandler cgi-script .py
	AddHandler default-handler .html .htm
</Directory>

---
Save /default file



---
create file .../cgi-bin/python1.py

----
sudo chmod +x .../cgi-bin/python1.py

