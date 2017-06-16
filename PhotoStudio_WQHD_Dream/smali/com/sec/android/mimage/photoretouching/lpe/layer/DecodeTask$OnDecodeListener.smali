.class public interface abstract Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask$OnDecodeListener;
.super Ljava/lang/Object;
.source "DecodeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/DecodeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDecodeListener"
.end annotation


# virtual methods
.method public abstract isExited()Z
.end method

.method public abstract onDecodeFailed(I)V
.end method

.method public abstract onDecodeFinished(Landroid/graphics/Bitmap;)V
.end method
