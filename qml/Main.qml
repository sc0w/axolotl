import QtQuick 2.9
import QtWebEngine 1.7
import QtQuick.Window 2.13

Window {
  width:400
  height:600
  WebEngineView  {
    anchors.fill: parent
      id: webView
      url: "http://localhost:9080/"
      // url: "https://google.de"
      settings.showScrollBars: false
      onJavaScriptConsoleMessage: {
          var msg = "[Axolotl Web View] [JS] (%1:%2) %3".arg(sourceID).arg(lineNumber).arg(message)
          console.log(msg)
      }
  }
}