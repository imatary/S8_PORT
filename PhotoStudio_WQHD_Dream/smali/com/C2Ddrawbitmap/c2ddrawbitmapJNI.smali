.class public Lcom/C2Ddrawbitmap/c2ddrawbitmapJNI;
.super Ljava/lang/Object;
.source "c2ddrawbitmapJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "C2Ddrawbitmap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native native_deinit_c2dJNI()V
.end method

.method public static native native_drawBitmapJNI(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)I
.end method

.method public static native native_init_c2dJNI()V
.end method

.method public static native native_reallocBitmapJNI(Landroid/graphics/Bitmap;)V
.end method
