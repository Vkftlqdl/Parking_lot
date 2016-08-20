# Parking_lot
Estimate available space in parking lot

Estimate available space
If there are space in parking lot, this code returns message.
When any space in there, it returns different message

This project is written by MATLAB

parking_lot_estimate.m
  : Make GUI and Message box
  function estimlots_Callback(hObject, eventdata, handles)
    : Show messages from number of tokens.
  
car.m
  : The module that excute image processing.
  : This module extract the last scene from video file
  : Then calculate the number of cars in parking lot.
