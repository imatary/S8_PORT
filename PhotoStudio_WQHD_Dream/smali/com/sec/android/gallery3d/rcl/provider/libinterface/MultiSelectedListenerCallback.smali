.class public interface abstract Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;
.super Ljava/lang/Object;
.source "MultiSelectedListenerCallback.java"


# virtual methods
.method public abstract OnMultiSelectStart(II)V
.end method

.method public abstract OnMultiSelectStop(II)V
.end method

.method public abstract onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation
.end method

.method public abstract setMultiSelectedListener(Landroid/widget/GridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V
.end method
