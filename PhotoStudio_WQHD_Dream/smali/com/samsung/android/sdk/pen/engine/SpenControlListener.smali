.class public interface abstract Lcom/samsung/android/sdk/pen/engine/SpenControlListener;
.super Ljava/lang/Object;
.source "SpenControlListener.java"


# static fields
.field public static final PRESS_TYPE_LONG_PRESS:I = 0x2

.field public static final PRESS_TYPE_NONE:I = 0x0

.field public static final PRESS_TYPE_TAP:I = 0x1


# virtual methods
.method public abstract onClosed(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onCreated(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ILandroid/graphics/PointF;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/graphics/PointF;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onMenuSelected(Ljava/util/ArrayList;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)Z"
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

.method public abstract onRotationChanged(FLcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method
