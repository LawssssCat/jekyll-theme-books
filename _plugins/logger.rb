# see https://ruby-doc.org/stdlib-2.4.0/libdoc/logger/rdoc/Logger.html

# stdlib
# require "forwardable"
# require "fileutils"
# require "time"
# require "English"
# require "pathname"
require "logger"
# require "set"
# require "csv"
# require "json"

$logger = Logger.new(STDOUT)

# DEBUG < INFO < WARN < ERROR < FATAL < UNKNOWN
# :debug < :info < :warn < :error < :fatal < :unknown
$logger.level = Logger::DEBUG