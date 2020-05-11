if (mouse_x < oCamcontrol.camera_x+follow_border) { x -= pan_speed; }
if (mouse_x > (oCamcontrol.camera_x+oCamcontrol.camera_w)-follow_border) { x += pan_speed; }
if (mouse_y < oCamcontrol.camera_y+follow_border) { y -= pan_speed; }
if (mouse_y > (oCamcontrol.camera_y+oCamcontrol.camera_h)-follow_border) { y += pan_speed; }