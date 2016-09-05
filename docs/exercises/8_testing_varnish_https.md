Exercise 8: testing Varnish and HTTPS
=====================================

Goal of the exercise: learning how to use the Docker stack to troubleshoot configuration problems for 'production like'
configurations


Prerequisites: having the 'dev' docker stack running

    cd /var/www/summercamp/workshops/deploy_qa
    php stack.php stop
    cd /var/www/summercamp/workshops/deploy
    php stack.php run


Navigate to https://deploy.websc/

Apart from the self-signed certificate, do you notice anything wrong?
Tip: use the browser debug tools for help


## Task 1: fix the broken links to content images when accessed via https

No ready made instructions for this one :-P

## Task 2: fix the broken block in the page footer (nb: this breaks only in DEV, not in UAT)

Tip: look for `render_hinclude`
