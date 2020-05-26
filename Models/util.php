<?php

function show404(){
    http_response_code(404);
    echo "Page not found";
    exit;
}