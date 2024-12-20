require 'logger'

log = Logger.new('log.rb')


log.level = Logger::ERROR

log.debug 'This is debug message & ignored'
log.error 'This is error'
log.info 'This is info for bug'
log.warn 'This is warning  from server'
log.fatal 'This is Fatal issue for server'
