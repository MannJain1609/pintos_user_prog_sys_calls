
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __gnu_javax_imageio_png_PNGFile__
#define __gnu_javax_imageio_png_PNGFile__

#pragma interface

#include <java/lang/Object.h>
#include <gcj/array.h>

extern "Java"
{
  namespace gnu
  {
    namespace javax
    {
      namespace imageio
      {
        namespace png
        {
            class PNGDecoder;
            class PNGEncoder;
            class PNGFile;
            class PNGHeader;
            class PNGPalette;
        }
      }
    }
  }
  namespace java
  {
    namespace awt
    {
      namespace color
      {
          class ColorSpace;
      }
      namespace image
      {
          class BufferedImage;
      }
    }
  }
}

class gnu::javax::imageio::png::PNGFile : public ::java::lang::Object
{

public:
  PNGFile(::java::io::InputStream *);
  PNGFile(::java::awt::image::BufferedImage *);
  virtual void writePNG(::java::io::OutputStream *);
private:
  jboolean validateHeader(JArray< jbyte > *);
public:
  virtual ::java::awt::image::BufferedImage * getBufferedImage();
private:
  ::gnu::javax::imageio::png::PNGPalette * getPalette();
  ::java::awt::color::ColorSpace * getColorSpace();
  static JArray< jbyte > * signature;
  static JArray< jbyte > * endChunk;
  ::java::util::Vector * __attribute__((aligned(__alignof__( ::java::lang::Object)))) chunks;
  ::gnu::javax::imageio::png::PNGHeader * header;
  jboolean hasPalette;
  jint width;
  jint height;
  ::gnu::javax::imageio::png::PNGDecoder * decoder;
  ::gnu::javax::imageio::png::PNGEncoder * encoder;
  ::java::awt::image::BufferedImage * sourceImage;
public:
  static ::java::lang::Class class$;
};

#endif // __gnu_javax_imageio_png_PNGFile__
