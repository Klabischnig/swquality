function getTestsets (testdata, component) {
	for (i in testdata){
		if (parseInt(testdata[i].idComponent) == component) {
			return testsets = testdata[i].testsets;
		}
	}
}

function showTestsets(current_execution, component, testdata, level){
	
	d3.select("#testset_"+level).selectAll("svg").remove();
	
	var testsets = null;
	
	if (testdata){
		testsets = getTestsets(testdata, component)
	}
	if (testsets != null) {
	  	
		for (i in testsets){
			
			var testsuites = getTestsuites(testsets[i])
			var testcases = getTestcases(testsets[i])
	
			var data_testcases = []
			for (j in testcases){
				data_testcases.push(testcases[j])
			}
			for (j in testsuites) {
				for (k in testsuites[j].testcases) {
					data_testcases.push(testsuites[j].testcases[k])
				}
			}
			svg_pie = createPiecharts(150, 150, 40, testsets[i], level, data_testcases);
		}		
	}
}


function getTestsuites (testset) {
	return testset.testsuites;
}

function getTestcases(testset) {
	return testset.testcases;
}

function createPiecharts (width, height, margin, testset, testlevel, data){
	var radius= Math.min(width, height) / 2 - margin
	
	// append the svg object to the div called 'my_dataviz'
	var svg = d3.select("#testset_"+testlevel)
	  .append("svg")
	    .attr("width", width)
	    .attr("height", height)
	  .append("g")
	    .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")");
	  
	// Compute the position of each group on the pie:
	var pie = d3.pie()
	  .value(function(d) {return 1 })
	  
	// shape helper to build arcs:
	var arc = d3.arc()
	 .innerRadius(15)
	 .outerRadius(radius)
	  
	var data_ready = pie(d3.entries(data))
	  
	var g = svg.selectAll(".arc")
	     .data(data_ready)
	     .enter().append("g")
	     .attr("class", "arc")
	     
	g.append("path")
    .attr("d", arc)
     .attr("stroke", "black")
	    .style("stroke-width", "2px")
	 	.attr('fill',  function (d) {
	 		return color_pie(d.data.value.result)})
	 		
	 //add text
	 g.append("text")
	 .text(function(d) { return d.data.value.idTestcase})
	  .attr("transform", function(d) { return "translate(" + arc.centroid(d) + ")";  })
	  .style("text-anchor", "middle")
	  .style("font-size", 13)
	  
	  //add titles
	  g.append("text")
	  	.text(testset.idTestset)
	      .attr("text-anchor", "middle" )
	      .attr("font-size", "14px")
	      .attr("fill",  "black" )
	
	svg.on("click", function(d)  {
		show_testset_information(testset)
	})
	return svg;
}

function color_pie(result){
	if(result == "failed") return "#c30000";
	else if (result == "passed") return "#00b300";
	else if (result == "not executed") return "yellow";
}


function show_testset_information(testset) {
	this.idTestset = testset.idTestset;
    this.testset = testset;
    var wnd = window.open("./testset.html","");
}