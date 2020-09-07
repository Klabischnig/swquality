function newTreemap (level, width, height, margin) {
	var svg = d3.select("#"+level+"_rect")
		.append("svg")
		.attr("width", width + margin.left + margin.right)
		.attr("height", height + margin.top + margin.bottom)
		.append("g")
		.attr("transform", "translate(" + margin.left + "," + margin.top + ")");
	return svg;
}

function updateTreemap(current_execution, root, level, svg, width, height){

    d3.selectAll("text").remove();
    d3.selectAll("vals").remove();
 	d3.selectAll("titles").remove();
    
	//read unit json data for current testexecution}
	d3.json("./data/testlevel/"+level+"/"+level+current_execution+".json", function(data) {
		var tested = []
		for (i in data) {
			tested.push(data[i].idComponent);
		}

		d3.treemap()
	    	.size([width, height])
	    	.paddingTop(28)
	    	.paddingRight(5)
	    	.paddingInner(2)      // Padding between each rectangle
	    	(root)
		
	    	svg
			  .selectAll("rect")
			  .data(root.leaves())
			  .enter()
			  .append("rect")
			    .attr('x', function (d) { return d.x0; })
			    .attr('y', function (d) { return d.y0; })
			    .attr('width', function (d) { return d.x1 - d.x0; })
			    .attr('height', function (d) { return d.y1 - d.y0; })
			    .style("stroke", "black")
			    .style("fill", function (d) {
			    	if (tested.includes(d.data.idComponent))
			    	return "#00b300";
			    	else return "#c30000"
			    })
			    .on("mouseover", mouseover_component)
				.on("mouseleave", mouseleave_component);
		
		// add title
		  svg
		    .append("text")
		      .attr("x", 0)
		      .attr("y", 14)  
		      .text(level)
		      .attr("font-size", "19px")
		      .attr("fill",  "grey")
	
		if (root.children.length < 10 && root.leaves().length < 45) {   
		
		  	/* add text labels */
			svg
			   	.selectAll("text")
			   	.data(root.leaves())
			   	.enter()
			   	.append("text")
		     		.attr("x", function(d){ 
		     			return d.x0+5}) 
		     		.attr("y", function(d){ return d.y0+20})   
		     		.text(function(d){
		     			return d.data.idComponent})
		     		.attr("font-size", "15px")
		     		.attr("fill", "black")
			     		
			/* add values */
			svg
				.selectAll("vals")
				.data(root.leaves())
				.enter()
				.append("text")
				 	.attr("x", function(d){ return d.x0+5})    
				   	.attr("y", function(d){ return d.y0+35})   
				   	.text(function(d){ 
				   			return d.data.testcoverage + " %"
				   	})
				   	.attr("font-size", "11px")
				   	.attr("fill", "black")
			   		
	   		/* add titles */
	  		svg
	  			.selectAll("titles")
	  			.data(root.descendants().filter(function(d){return d.depth==1}))
	  			.enter()
	  			.append("text")
	  				.attr("x", function(d){ return d.x0})
	  				.attr("y", function(d){ return d.y0+21})
	  				.text(function(d){ return d.data.subsystem })
	  				.attr("font-size", "19px")
	  				.attr("fill",  "black");
	  	}
		
		
		svg.selectAll("rect").on("click", function(d){
			selected_component = d.data.idComponent;
			document.getElementById(level+"_rect").style.display="none";
			document.getElementById("btn_close_"+level).style.display="block";
			document.getElementById("testset_"+level).style.display="block";
			showTestsets(current_execution, selected_component, data, level);
		})
	})
	return svg
}

/* change the tooltip when moving over cell */
var mouseover_component = function(d) {
	d3.select(this)
	 	.style("stroke", "black")
	  	.style("stroke-width", 2);
	tool.style("left", d3.event.pageX + 10 + "px");
    tool.style("top", d3.event.pageY - 20 + "px");
    tool.style("display", "inline-block");
	tool.html(d.data.title+"<br>"
			+"subsystem: " + d.data.subsystem + "<br>"
			+"defects: " + d.data.numberOfDefects + "<br>"
			+"testcoverage: " + d.data.testcoverage +"%");
}

/* change the tooltip when leaving a cell */
var mouseleave_component = function(d) {
	d3.select(this)
		.style("stroke-width", 1);
	tool.style("display", "none");
}


