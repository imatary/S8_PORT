.class public interface abstract Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;
.super Ljava/lang/Object;
.source "MediaPlayerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;
    }
.end annotation


# virtual methods
.method public abstract SetParameter(Landroid/media/MediaPlayer;II)V
.end method

.method public abstract checkMediaResourceUsed()Z
.end method

.method public abstract newInstanceMediaResourceHelper()Z
.end method

.method public abstract registerListener()V
.end method

.method public abstract releaseMediaResourceHelper()V
.end method

.method public abstract setMediaResourceHelperListener(Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;)V
.end method
