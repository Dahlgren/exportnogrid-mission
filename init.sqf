waitUntil {time > 0};

_status = "exportnogrid" callExtension "export";
hint _status;

waitUntil {
  _status = "exportnogrid" callExtension "status";
  sleep 1;
  hint "Processing";
  _status == "False";
};

hint "Done";
endMission "END1";
