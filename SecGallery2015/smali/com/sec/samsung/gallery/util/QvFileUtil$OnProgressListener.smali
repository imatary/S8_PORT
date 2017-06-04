.class public interface abstract Lcom/sec/samsung/gallery/util/QvFileUtil$OnProgressListener;
.super Ljava/lang/Object;
.source "QvFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/QvFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnProgressListener"
.end annotation


# virtual methods
.method public abstract handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
.end method

.method public abstract onCompleted(Z)V
.end method

.method public abstract onProgress(II)V
.end method
