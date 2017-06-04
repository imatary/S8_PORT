.class public interface abstract Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;
.super Ljava/lang/Object;
.source "SecretboxOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/SecretboxOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSecretboxListener"
.end annotation


# virtual methods
.method public abstract cancelOperation()V
.end method

.method public abstract handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z
.end method

.method public abstract onCompleted(I)V
.end method

.method public abstract onProgress(II)V
.end method
