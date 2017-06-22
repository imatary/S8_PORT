.class public interface abstract Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$Listener;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onHoverEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
.end method

.method public abstract onTouchDownEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
.end method

.method public abstract onTouchMoveEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
.end method

.method public abstract onTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
.end method
