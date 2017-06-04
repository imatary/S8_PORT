.class public abstract Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "RemoteMediaSet.java"


# instance fields
.field protected final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method
