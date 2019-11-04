
// updated map() function that supports all kinds of easing!
// via Manohar Vanga with a slight mod by me
// https://sighack.com/post/easing-functions-in-processing
// https://github.com/sighack/easing-functions


// map2() function supports the following easing types
final int LINEAR =      0;
final int QUADRATIC =   1;
final int CUBIC =       2;
final int QUARTIC =     3;
final int QUINTIC =     4;
final int SINUSOIDAL =  5;
final int EXPONENTIAL = 6;
final int CIRCULAR =    7;
final int SQRT =        8;

// when the easing is applied (start, end, or both)
final int IN =   0;
final int OUT =  1;
final int BOTH = 2;

// a map() replacement that allows for specifying easing curves
// with arbitrary exponents
float map2(float value, float start1, float stop1, float start2, float stop2, int type, int when) {
  float b = start2;
  float c = stop2 - start2;
  float t = value - start1;
  float d = stop1 - start1;
  float p = 0.5;
  
  switch (type) {
  case LINEAR:
    return c*t/d + b;
  
  case SQRT:
    if (when == IN) {
      t /= d;
      return c*pow(t, p) + b;
    } 
    else if (when == OUT) {
      t /= d;
      return c * (1 - pow(1 - t, p)) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2*pow(t, p) + b;
      return c/2 * (2 - pow(2 - t, p)) + b;
    }
    break;
  
  case QUADRATIC:
    if (when == IN) {
      t /= d;
      return c*t*t + b;
    } 
    else if (when == OUT) {
      t /= d;
      return -c * t*(t-2) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2*t*t + b;
      t--;
      return -c/2 * (t*(t-2) - 1) + b;
    }
    break;
  
  case CUBIC:
    if (when == IN) {
      t /= d;
      return c*t*t*t + b;
    } 
    else if (when == OUT) {
      t /= d;
      t--;
      return c*(t*t*t + 1) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2*t*t*t + b;
      t -= 2;
      return c/2*(t*t*t + 2) + b;
    }
    break;
  
  case QUARTIC:
    if (when == IN) {
      t /= d;
      return c*t*t*t*t + b;
    } 
    else if (when == OUT) {
      t /= d;
      t--;
      return -c * (t*t*t*t - 1) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2*t*t*t*t + b;
      t -= 2;
      return -c/2 * (t*t*t*t - 2) + b;
    }
    break;
  
  case QUINTIC:
    if (when == IN) {
      t /= d;
      return c*t*t*t*t*t + b;
    } 
    else if (when == OUT) {
      t /= d;
      t--;
      return c*(t*t*t*t*t + 1) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2*t*t*t*t*t + b;
      t -= 2;
      return c/2*(t*t*t*t*t + 2) + b;
    }
    break;
  
  case SINUSOIDAL:
    if (when == IN) {
      return -c * cos(t/d * (PI/2)) + c + b;
    } 
    else if (when == OUT) {
      return c * sin(t/d * (PI/2)) + b;
    } 
    else if (when == BOTH) {
      return -c/2 * (cos(PI*t/d) - 1) + b;
    }
    break;
  
  case EXPONENTIAL:
    if (when == IN) {
      return c * pow( 2, 10 * (t/d - 1) ) + b;
    } 
    else if (when == OUT) {
      return c * ( -pow( 2, -10 * t/d ) + 1 ) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return c/2 * pow( 2, 10 * (t - 1) ) + b;
      t--;
      return c/2 * ( -pow( 2, -10 * t) + 2 ) + b;
    }
    break;
  
  case CIRCULAR:
    if (when == IN) {
      t /= d;
      return -c * (sqrt(1 - t*t) - 1) + b;
    } 
    else if (when == OUT) {
      t /= d;
      t--;
      return c * sqrt(1 - t*t) + b;
    } 
    else if (when == BOTH) {
      t /= d/2;
      if (t < 1) return -c/2 * (sqrt(1 - t*t) - 1) + b;
      t -= 2;
      return c/2 * (sqrt(1 - t*t) + 1) + b;
    }
    break;
  };
  
  return 0;
}

// a map() replacement that allows for specifying easing curves
// with arbitrary exponents
float map3(float value, float start1, float stop1, float start2, float stop2, float v, int when) {
  float b =   start2;
  float c =   stop2 - start2;
  float t =   value - start1;
  float d =   stop1 - start1;
  float p =   v;
  float out = 0;
  
  if (when == IN) {
    t /= d;
    out = c*pow(t, p) + b;
  } 
  else if (when == OUT) {
    t /= d;
    out = c * (1 - pow(1 - t, p)) + b;
  } 
  else if (when == BOTH) {
    t /= d/2;
    if (t < 1) return c/2*pow(t, p) + b;
    out = c/2 * (2 - pow(2 - t, p)) + b;
  }
  
  return out;
}
