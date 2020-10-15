// console.log(data);

// console.log(nfl_data.slice(1));

function m3(data){
// creates list for storing values
dict1 = []    
frst_split = data.split("}");    
frst_split.forEach(function(string) {
    sec_split = string.split(",");
    var dict2 = {}
    sec_split.forEach(function(y){
        thd_split = y.split(":")
        if (isNaN(thd_split[1]) === false){
            thd_split[1] =  parseInt(thd_split[1], 10)
        }
        else if (thd_split[1] !== undefined) {
        thd_split[1] = thd_split[1].trim();
        thd_split[1] = thd_split[1].substring(1);
        thd_split[1]= thd_split[1].substring(0, thd_split[1].length - 1);
        }

        key1 = thd_split[0].trim();
        key1 = key1.substring(1);
        key1 = key1.substring(0, key1.length - 1);
        dict2[key1] = thd_split[1];
    })
    dict1.push(dict2) 
})
return dict1    
}

off_data = m3(off);
def_data = m3(def);
misc_data = m3(misc);
// var year = nfl_data.map(x => x.years);
console.log(off_data);
console.log(def_data);
console.log(misc_data);
console.log("hi");

// var mar_of_vic = dict1.map(x => x.margin_of_victory)
// var pass_comp = dict1.map(x => x.pass_completions)

// var trace1 = {
//     x: pass_comp,
//     y: mar_of_vic,
//     type: "scatter"
//   };

// var data = [trace1];
// Plotly.newPlot("plot", data);