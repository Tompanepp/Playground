#include <cstdlib>
#include <iostream>

using namespace std;

#include <windows.h>

   void SetNumLock( BOOL bState )
   {
      BYTE keyState[256];

      GetKeyboardState((LPBYTE)&keyState);

      if( (bState && !(keyState[VK_NUMLOCK] & 1)) ||
          (!bState && (keyState[VK_NUMLOCK] & 1)) )
      {




      //Simulate a key press
         keybd_event( VK_NUMLOCK,
                      0x3A,
                      KEYEVENTF_EXTENDEDKEY | 0,
                      0 );

      //Simulate a key release
         keybd_event( VK_NUMLOCK,
                      0x3A,
                      KEYEVENTF_EXTENDEDKEY | KEYEVENTF_KEYUP,
                      0);
                      }
   }

   int main()
   {
     SetNumLock( TRUE );

      while(true)
      {

      }

      for(;;)
      {

             }
      return 0;
   }

