# Silence noisy WEBrick "Connection reset by peer" / "Broken pipe" errors that
# occur when the browser closes a livereload or HTTP/2 probe connection mid-
# response. These are benign but flood the local dev server log.
#
# Local-only: GitHub Pages does not load files from _plugins/, so this has no
# effect on the deployed site.

require "webrick/httpserver"

module WEBrick
  class HTTPServer
    alias_method :_run_without_econnreset_silence, :run

    def run(sock)
      _run_without_econnreset_silence(sock)
    rescue Errno::ECONNRESET, Errno::EPIPE, Errno::ETIMEDOUT, EOFError
      # Client went away mid-response. Nothing to log.
    end
  end
end
