.class public abstract Lcom/sec/android/gallery3d/remote/RemoteMediaSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "RemoteMediaSource.java"


# instance fields
.field protected final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p2, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/RemoteMediaSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method
