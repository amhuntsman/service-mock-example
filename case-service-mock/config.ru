# config.ru
require File.join(File.dirname(__FILE__), 'app')

run CaseService::MockApp