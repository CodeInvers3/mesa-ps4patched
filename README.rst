Build & install
---------------

.. code-block:: sh

  $ meson setup build/ --prefix=/usr --libexecdir=lib --sbindir=bin --auto-features=enabled \
   -Dbuildtype=release \
  $ -Dplatforms=x11,wayland \
  $ -Dgallium-drivers=r600,radeonsi \
  $ -Dvulkan-drivers=amd \
  $ -Degl=enabled \
  $ -Dgbm=enabled \
  $ -Dglx=dri \
  $ -Dllvm=enabled \
  $ -Dshared-llvm=enabled \
  $ -Ddraw-use-llvm=true \
  $ -Damd-use-llvm=true \
  $ -Dshared-glapi=enabled \
  $ -Dshader-cache=enabled \
  $ -Dgallium-va=enabled \
  $ -Dgallium-vdpau=enabled \
  $ -Dgallium-opencl=disabled \
  $ -Dgallium-xa=disabled \
  $ -Dvalgrind=disabled \
  $ -Dlibunwind=disabled \
  $ -Dlmsensors=disabled \
  $ -Dzstd=enabled \
  $ -Dgles1=enabled \
  $ -Dgles2=enabled \
  $ -Dxmlconfig=enabled \
  $ -Dandroid-libbacktrace=disabled
  $ sudo ninja -C build/ install

Notes
-------

Tested PS4 CUH-1215A Nobara 41
