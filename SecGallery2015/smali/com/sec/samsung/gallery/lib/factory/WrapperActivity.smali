.class public Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;
.super Landroid/app/Activity;
.source "WrapperActivity.java"


# instance fields
.field private mListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->mListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->mListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;->onMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method protected setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->mListener:Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;

    return-void
.end method
