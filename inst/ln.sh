cd /etc/nginx/sites-enabled
sudo ln -s /home/anton/proj/bhagavadgita_server/nginx/etc/nginx/bhagavadgita_sites.conf


exit 0

cd /etc/systemd/system
ln -s /home/anton/proj/bhagavadgita_server/varnish/etc/systemd/system/varnish@bhagavadgita.service

sudo systemctl enable varnish@bhagavadgita.service




cd /etc/systemd/system
sudo ln -s /home/anton/proj/bhagavadgita_server/cloudflare/etc/systemd/system/cloudflared.service
sudo ln -s /home/anton/proj/bhagavadgita_server/cloudflare/etc/systemd/system/cloudflared@us.service
sudo ln -s /home/anton/proj/bhagavadgita_server/cloudflare/etc/systemd/system/cloudflared@th.service

sudo systemctl enable cloudflared.service
sudo systemctl enable cloudflared@us.service
sudo systemctl enable cloudflared@th.service




sudo systemctl start varnish@bhagavadgita.service


sudo systemctl start cloudflared.service
sudo systemctl start cloudflared@us.service
sudo systemctl start cloudflared@th.service

exit 0