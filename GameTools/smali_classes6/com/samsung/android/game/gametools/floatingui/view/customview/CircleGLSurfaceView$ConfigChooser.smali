.class Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;
.super Ljava/lang/Object;
.source "CircleGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# instance fields
.field private EGL_OPENGL_ES2_BIT:I

.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field private s_configAttribs2:[I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->s_configAttribs2:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mValue:[I

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mRedSize:I

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mGreenSize:I

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mBlueSize:I

    iput p4, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mAlphaSize:I

    iput p5, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mDepthSize:I

    iput p6, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mStencilSize:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12

    const/16 v6, 0x21

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "EGL_BUFFER_SIZE"

    aput-object v6, v4, v9

    const-string/jumbo v6, "EGL_ALPHA_SIZE"

    aput-object v6, v4, v10

    const-string/jumbo v6, "EGL_BLUE_SIZE"

    aput-object v6, v4, v11

    const/4 v6, 0x3

    const-string/jumbo v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "EGL_RED_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "EGL_CONFIG_ID"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "EGL_LEVEL"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    const-string/jumbo v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "EGL_SAMPLES"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    const-string/jumbo v7, "EGL_SURFACE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    const-string/jumbo v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    const-string/jumbo v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    const-string/jumbo v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    const-string/jumbo v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x18

    const-string/jumbo v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v4, v6

    const/16 v6, 0x19

    const-string/jumbo v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v4, v6

    const/16 v6, 0x1a

    const-string/jumbo v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1b

    const-string/jumbo v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1c

    const-string/jumbo v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1d

    const-string/jumbo v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1e

    const-string/jumbo v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x1f

    const-string/jumbo v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x20

    const-string/jumbo v7, "EGL_CONFORMANT"

    aput-object v7, v4, v6

    new-array v5, v10, [I

    const/4 v2, 0x0

    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    aget v0, v1, v2

    aget-object v3, v4, v2

    invoke-interface {p1, p2, p3, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "  %s: %d%n"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aget v8, v5, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    array-length v1, p3

    const-string/jumbo v2, "%d configurations"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const-string/jumbo v2, "Configuration %d:%n"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V

    aget-object v2, p3, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v4, v5, v4

    if-gtz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15

    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_2

    aget-object v4, p3, v13

    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mDepthSize:I

    if-lt v9, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mStencilSize:I

    if-ge v12, v1, :cond_1

    :cond_0
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    :cond_1
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mRedSize:I

    if-ne v11, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mGreenSize:I

    if-ne v10, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mBlueSize:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_0

    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
