.class public interface abstract Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ActionListener"
.end annotation


# virtual methods
.method public abstract onClosed(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMenuSelected(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onObjectChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRectChanged(Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract onRequestBackground()Landroid/graphics/Bitmap;
.end method

.method public abstract onRequestCoordinateInfo(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V
.end method

.method public abstract onRequestHoveringImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract onRequestPixel(II)I
.end method

.method public abstract onRequestScroll(FF)V
.end method

.method public abstract onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public abstract onVisibleUpdated(Ljava/util/ArrayList;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZ)V"
        }
    .end annotation
.end method
