
readChannelID = 1635256; 
// Temperature Field ID 
myFieldID = 1; 
//One day date range
oneDay = [datetime('yesterday') datetime('today')];
 
readAPIKey = 'K1BT6Y77BEFGSQSB'; 

// Read Temperature Data. Learn more about the THINGSPEAKREAD function by 
//going to the Documentation tab on the right side pane of this page. 
temperatureDay1 = thingSpeakRead(readChannelID,'Fields',myFieldID, ...
                                 'dateRange', oneDay, 'ReadKey',readAPIKey); 
temperatureDay2 = thingSpeakRead(readChannelID,'Fields',myFieldID, ...
                                 'dateRange',oneDay-days(1),'ReadKey',readAPIKey); 
temperatureDay3 = thingSpeakRead(readChannelID,'Fields',myFieldID, ...
                                'dateRange', oneDay-days(2),'ReadKey',readAPIKey); 

% Create array of durations 
myTimes1 = minutes(1:length(temperatureDay1));
myTimes2 = minutes(1:length(temperatureDay2));
myTimes3 = minutes(1:length(temperatureDay3));

% Visualize the data
plot(myTimes1,temperatureDay1, myTimes2,temperatureDay2, myTimes3, temperatureDay3);
legend({'Day1','Day2','Day3'});
xlabel('Minutes');
ylabel('Temperature F');
title('3-Day Temperature Comparison');