
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __java_awt_image_PixelGrabber__
#define __java_awt_image_PixelGrabber__

#pragma interface

#include <java/lang/Object.h>
#include <gcj/array.h>

extern "Java"
{
  namespace java
  {
    namespace awt
    {
        class Image;
      namespace image
      {
          class ColorModel;
          class ImageProducer;
          class PixelGrabber;
      }
    }
  }
}

class java::awt::image::PixelGrabber : public ::java::lang::Object
{

public:
  PixelGrabber(::java::awt::Image *, jint, jint, jint, jint, JArray< jint > *, jint, jint);
  PixelGrabber(::java::awt::image::ImageProducer *, jint, jint, jint, jint, JArray< jint > *, jint, jint);
  PixelGrabber(::java::awt::Image *, jint, jint, jint, jint, jboolean);
  virtual void startGrabbing();
  virtual void abortGrabbing();
  virtual jboolean grabPixels();
  virtual jboolean grabPixels(jlong);
private:
  jboolean setObserverStatus();
public:
  virtual jint getStatus();
  virtual jint getWidth();
  virtual jint getHeight();
  virtual ::java::lang::Object * getPixels();
  virtual ::java::awt::image::ColorModel * getColorModel();
  virtual void setDimensions(jint, jint);
  virtual void setProperties(::java::util::Hashtable *);
  virtual void setColorModel(::java::awt::image::ColorModel *);
  virtual void setHints(jint);
  virtual void setPixels(jint, jint, jint, jint, ::java::awt::image::ColorModel *, JArray< jbyte > *, jint, jint);
  virtual void setPixels(jint, jint, jint, jint, ::java::awt::image::ColorModel *, JArray< jint > *, jint, jint);
  virtual void imageComplete(jint);
  virtual jint status();
public: // actually package-private
  jint __attribute__((aligned(__alignof__( ::java::lang::Object)))) x;
  jint y;
  jint offset;
  jint width;
  jint height;
  jint scansize;
  jboolean forceRGB;
  ::java::awt::image::ColorModel * model;
  jint hints;
  ::java::util::Hashtable * props;
  JArray< jint > * int_pixel_buffer;
  jboolean ints_delivered;
  JArray< jbyte > * byte_pixel_buffer;
  jboolean bytes_delivered;
  ::java::awt::image::ImageProducer * ip;
  jint observerStatus;
  jint consumerStatus;
private:
  ::java::lang::Thread * grabberThread;
public: // actually package-private
  jboolean grabbing;
public:
  static ::java::lang::Class class$;
};

#endif // __java_awt_image_PixelGrabber__
