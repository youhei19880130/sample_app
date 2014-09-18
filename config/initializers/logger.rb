class Logger
  class Formatter
    def call(severity, time, progname, msg)
      if msg.class.to_s == "String"
        if msg.present? && !msg.include?("assets") && !msg.include?("erb")
          format = "[%s #%d] %5s -- %s: %s\n"
          format % ["#{time.strftime('%Y-%m-%d %H:%M:%S')}",$$, severity, progname, msg2str(msg)]
        end
      end
    end
  end
end
