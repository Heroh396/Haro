<!---
/*******************************************************************************
// Project name   :
// File name      : README.md
// Created date   : Thứ hai, 26 Tháng sáu Năm 2017 23:24:05 ICT
// Author         : Huy Hung Ho
// Last modified  : Thu 07 Sep 2017 10:02:25 AM ICT
// Desc           :
*******************************************************************************/
-->
Introduction
============

Haro is my assistant.

She is very aweful.


Features
========

- [x] Haro: assistant communication (greeting, warning)
	- Using command to comunicate with Ms.Haro
	- $ haro "Why am I ?"

- [x] Notification new email
	- Install unity-mail to use

- [x] Voc: Learning English
	- Display new vocabulary every two minutes
	- Using command to add new vocabulary
	- $ voc "hello [həˈloʊ] : xin chao"

- [x] Mp3: Convert youtube video to mp3 and save in ~/Music
	- $ mp3 https://www.youtube.com/watch?v=9bZkp7q19f0

- [x] Weather: Check Hanoi wether when login
	- $ weather 	(check weather online)

- [x] Read ieeexplore paper free
	- $ paper ieeexplore.ieee.org/document/7799795/
	- $ paper 		(using clipboard)

- [ ] Create job from excel table

- [ ] Auto send mail

- [ ] Relaxing every hours

- [ ] Playing music

- [ ] Check fb: using [Facebook Graph API](https://developers.facebook.com/docs/reference/api/)

- [ ] Configure individual user


Requirements
============

- Linux, bash shell
- Notify-send
- At
- Crontab
- Firefox (or google-chrome)
- Youtube-dl


Install
=======

To build this software you just need to:
- `git clone https://github.com/yoloh3/Haro`
- `cd Haro`
- `chmod u+x run.sh`
- `./run.sh`

To remove this software:
- `./clean.sh`
