#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/register_percolator.sh "awesome"
$DIR/register_percolator.sh "james"
$DIR/list_percolators.sh

$DIR/match_document.sh 'This shall not match'
$DIR/match_document.sh 'James created this'
$DIR/match_document.sh 'This is awesome'
$DIR/match_document.sh 'James is awesome'

