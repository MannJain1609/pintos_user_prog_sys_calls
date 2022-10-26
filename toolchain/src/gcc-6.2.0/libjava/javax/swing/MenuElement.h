
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __javax_swing_MenuElement__
#define __javax_swing_MenuElement__

#pragma interface

#include <java/lang/Object.h>
#include <gcj/array.h>

extern "Java"
{
  namespace java
  {
    namespace awt
    {
        class Component;
      namespace event
      {
          class KeyEvent;
          class MouseEvent;
      }
    }
  }
  namespace javax
  {
    namespace swing
    {
        class MenuElement;
        class MenuSelectionManager;
    }
  }
}

class javax::swing::MenuElement : public ::java::lang::Object
{

public:
  virtual void processMouseEvent(::java::awt::event::MouseEvent *, JArray< ::javax::swing::MenuElement * > *, ::javax::swing::MenuSelectionManager *) = 0;
  virtual void processKeyEvent(::java::awt::event::KeyEvent *, JArray< ::javax::swing::MenuElement * > *, ::javax::swing::MenuSelectionManager *) = 0;
  virtual void menuSelectionChanged(jboolean) = 0;
  virtual JArray< ::javax::swing::MenuElement * > * getSubElements() = 0;
  virtual ::java::awt::Component * getComponent() = 0;
  static ::java::lang::Class class$;
} __attribute__ ((java_interface));

#endif // __javax_swing_MenuElement__
