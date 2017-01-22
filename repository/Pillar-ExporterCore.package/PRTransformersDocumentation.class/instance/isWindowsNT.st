operating system
isWindowsNT
  "Return true if the server is running on Windows NT."

  ^ (System gemVersionAt: #'osName') startsWith: 'Windows'