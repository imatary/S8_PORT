.class public Lcom/sec/android/mimage/photoretouching/jni/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "photoeditorUtil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native destroy_objectsel()V
.end method

.method public static native draw_reversemask([I[I[BII)V
.end method

.method public static native draw_withmask([I[I[BILandroid/graphics/Rect;)V
.end method

.method public static native get_brush_center()I
.end method

.method public static native get_brush_radius()I
.end method

.method public static native get_objectROI(Landroid/graphics/Rect;)V
.end method

.method public static native init_objectsel(II)I
.end method

.method public static native inverse_objectsel([BII)V
.end method

.method public static native modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V
.end method

.method public static native nativeIntAlloc(I)[I
.end method

.method public static native nativeIntRelease([I)I
.end method

.method public static native native_drawImage([III[IIIFIILandroid/graphics/Rect;)Z
.end method

.method public static native native_drawImageWithMaskContour([III[III[BFIIIILandroid/graphics/Rect;)Z
.end method

.method public static native native_drawSmallImage([III[IIILandroid/graphics/Rect;)Z
.end method

.method public static native native_drawSmallImageWithMaskContour([III[III[BIILandroid/graphics/Rect;)Z
.end method

.method public static native native_setImagePoints(IIIIFII[I)V
.end method

.method public static native reinit_objectsel([BIILandroid/graphics/Rect;)V
.end method

.method public static native reset_fill_ROI(II)V
.end method

.method public static native reset_objectsel([BII)V
.end method

.method public static native set_brush_size(II)V
.end method

.method public static native set_objectROI(Landroid/graphics/Rect;)V
.end method

.method public static native update_objectROI([BII)V
.end method
