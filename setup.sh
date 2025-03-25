meson setup build/ --prefix=/usr --libexecdir=lib --sbindir=bin --auto-features=enabled \
  -Dbuildtype=release \
  -Doptimization=3 \
  -Dcpp_std=c++17 \
  -Dplatforms=x11,wayland \
  -Dgallium-drivers=radeonsi \
  -Dvulkan-drivers=amd \
  -Damd-gpu-targets=gfx601 \
  -Degl=enabled \
  -Dgbm=enabled \
  -Dglx=dri \
  -Dglvnd=enabled \
  -Dllvm=enabled \
  -Dshared-glapi=enabled \
  -Dgallium-va=enabled \
  -Dgallium-vdpau=enabled \
  -Dgallium-xa=disabled \
  -Dgallium-extra-hud=true \
  -Dgallium-opencl=disabled \
  -Dgallium-rusticl=false \
  -Dvideo-codecs=all_free \
  -Dvalgrind=disabled \
  -Dlibunwind=disabled \
  -Dlmsensors=enabled \
  -Dzstd=enabled \
  -Dxmlconfig=enabled \
  -Dosmesa=false \
  -Dmicrosoft-clc=disabled \
  -Dandroid-libbacktrace=disabled \
  -Dpython.bytecompile=1 \
  -Db_pie=true \
  -Db_ndebug=true \
  -Db_lto=true \
  --wrap-mode=nofallback

ninja -C build/
sudo ninja -C build/ install
glxinfo | grep "OpenGL version"
