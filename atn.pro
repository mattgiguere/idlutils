function atn, y, x;PURPOSE: This procedure will find the arctangent of the two sides and ;       compensate for the ambiguity caused by taking the arctangent. ; HISTORY: made into function from arctan.pro26Jan2006 ~MJGa =  fltarr(n_elements(x))i = where((x gt 0) and (y gt 0)) &if i(0) ne -1 then a(i) = atan(y(i)/x(i))i = where((x gt 0) and (y eq 0)) &if i(0) ne -1 then a(i) = 0.i = where((x gt 0) and (y lt 0)) &if i(0) ne -1 then a(i) = 2.*!pi-atan(abs(y(i))/abs(x(i)))i = where((x eq 0) and (y gt 0)) &if i(0) ne -1 then a(i) = !pi/2.i = where((x eq 0) and (y lt 0)) &if i(0) ne -1 then a(i) = !pi*3./2.i = where((x lt 0) and (y gt 0)) &if i(0) ne -1 then a(i) = !pi-atan(abs(y(i))/abs(x(i)))i = where((x lt 0) and (y eq 0)) &if i(0) ne -1 then a(i) = !pii = where((x lt 0) and (y lt 0)) &if i(0) ne -1 then a(i) = !pi+atan(abs(y(i))/abs(x(i)))return, aend ;atn.pro