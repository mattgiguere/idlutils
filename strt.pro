;+;NAME: STRT.PRO;; PURPOSE: this function  will convert a number to a string ; and trim the empty space off of the sides in one fell swoop.;;KEYWORDS: ;F: This is the FORMAT code to use;;HISTORY:; Created by MJG;  Format keyword added 31Mar2006 ~MJG;-function strt, num, f = fCOMPILE_OPT idl2, HIDDENreturn, strtrim(string(num, FORMAT = f), 2)end ;strt.pro