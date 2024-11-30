<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TimelineJS Example</title>
    <link title="TimelineJS Stylesheet" href="https://cdn.knightlab.com/libs/timeline3/latest/css/timeline.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.knightlab.com/libs/timeline3/latest/js/timeline.js" type="text/javascript"></script>
</head>
<body>
    <h1>TimelineJS on Jekyll</h1>
    <div id="timeline-embed" style="width: 100%; height: 650px;"></div>
    <script type="text/javascript">
        {% for node in sortedPages %}
        {% if node.number != null %}
        var timelineOptions = {
            source: 'https://cdn.knightlab.com/libs/timeline3/latest/embed/index.html?source=1_kGRYVxOaOYmLBlptwcD3ejtsxwCgmlxx37GnwvMCy8&font=Default&lang=en&initial_zoom=2&height=650',
            width: '100%',
            height: '650'
        };
        timeline = new TL.Timeline('timeline-embed', timelineOptions.source, timelineOptions);
        {% endif %}
        {% endfor %}
    </script>
</body>
</html>
