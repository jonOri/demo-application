# demo-application

## A simple application based on httpd:alpine

Environment variables prepended with ORI_ are made available to a CGI script using the PassEnv Apache directive. The Perl (yes Perl, it was already in the base image) CGI script makes these available as JSON which are loaded via jQuery.getJSON() and displayed.

Used to demonstrate environment variables being passed to applications.
