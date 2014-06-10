setInterval(function() {
   var data = {value:[
	  { label: "iOS", value: 50 },
	  { label: "Android", value: 34 },
	  { label: "Chrome", value: 70 },
	  { label: "IE", value: 30 },
	  { label: "Firefox", value: 100 },
	]};
  // console.log(data);
  send_event('platforms', data);
}, 2 * 1000);
