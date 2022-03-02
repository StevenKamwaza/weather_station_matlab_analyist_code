// read data from channel 
readChannelID = 1635256; 
   
// difene our  Temperature Field ID 
TemperatureFieldID = 1; 
// define channel api key   
readAPIKey = 'K1BT6Y77BEFGSQSB'; 

// Get temperature data from field 4 for the last 24 hours = 24 x 60 
// minutes. Learn more about the THINGSPEAKREAD function by going to 
// the Documentation tab on the right side pane of this page. 
   
tempF = thingSpeakRead(readChannelID,'Fields',TemperatureFieldID,'NumMinutes',24*60, 'ReadKey',readAPIKey); 
   
histogram(tempF); 
xlabel('Temperature (F)'); 
ylabel('Number of Measurements\newline for Each Temperature'); 
title('Temperature Variation In The Last 24 hours');
