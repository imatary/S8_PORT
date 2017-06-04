.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;
.super Ljava/lang/Object;
.source "PrivateModeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;
    }
.end annotation


# virtual methods
.method public abstract getInstance(Landroid/content/Context;)V
.end method

.method public abstract getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isPrivateStorageMounted(Landroid/content/Context;)Z
.end method

.method public abstract isReady(Landroid/content/Context;)Z
.end method

.method public abstract setListener(Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface$OnPrivateModeListener;)V
.end method

.method public abstract unregisterClient(Landroid/content/Context;Z)V
.end method
