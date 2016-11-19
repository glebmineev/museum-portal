<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://developer.api.autodesk.com/viewingservice/v1/viewers/style.css" type="text/css">
    <script src="https://developer.api.autodesk.com/viewingservice/v1/viewers/viewer3D.min.js"></script>
    <script>
        function initialize() {
            var options = {
                'document' : 'urn:dXJuOmFkc2sub2JqZWN0czpvcy5vYmplY3Q6bW9kZWwyMDE2LTExLTE5LTIxLTAyLTQ2LXVnZGwwcW1ncXppeHdncDVyYW96enB6YXBtcmMvR29sZCtmcmFtZS5kd2c',
                'env':'AutodeskProduction',
                'getAccessToken': getToken,
                'refreshToken': getToken,
            };
            var viewerElement = document.getElementById('viewer');
            var viewer = new Autodesk.Viewing.Viewer3D(viewerElement, {});
            Autodesk.Viewing.Initializer(options,function() {
                viewer.initialize();
                loadDocument(viewer, options.document);
            });
        }
        // This method returns a valid access token For the Quick Start we are just returning the access token
        // we obtained in step 2. In the real world, you would never do this.
        function getToken() {
            return "ugDL0QmgqziXWgp5rAoZZPZApmRc";
        }

        function loadDocument(viewer, documentId) {
            // Find the first 3d geometry and load that.
            Autodesk.Viewing.Document.load(documentId, function(doc) {// onLoadCallback
                var geometryItems = [];
                geometryItems = Autodesk.Viewing.Document.getSubItemsWithProperties(doc.getRootItem(), {
                    'type' : 'geometry',
                    'role' : '3d'
                }, true);
                if (geometryItems.length > 0) {
                    viewer.load(doc.getViewablePath(geometryItems[0]));
                }
            }, function(errorMsg) {// onErrorCallback
                alert("Load Error: " + errorMsg);
            });
        }
    </script>
</head>
<body onload="initialize()">
<div id="viewer" style="position:absolute; width:90%; height:60%;"></div>
</body>
</html>



