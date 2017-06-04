.class public interface abstract Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;
.super Ljava/lang/Object;
.source "GlObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlPenSelectListener"
.end annotation


# virtual methods
.method public abstract isReachedBoundary()I
.end method

.method public abstract onPenEnter(Landroid/graphics/PointF;)Z
.end method

.method public abstract onPenMove(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
.end method

.method public abstract onPenSelect(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
.end method
