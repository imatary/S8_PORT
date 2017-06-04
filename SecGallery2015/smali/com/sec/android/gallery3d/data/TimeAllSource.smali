.class public Lcom/sec/android/gallery3d/data/TimeAllSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "TimeAllSource.java"


# static fields
.field public static final PATH_PREFIX:Ljava/lang/String; = "timeall"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    const-string/jumbo v0, "timeall"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/TimeAllSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/TimeAllSource;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/TimeAllSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    new-instance v3, Lcom/sec/android/gallery3d/data/TimeAllAlbum;

    invoke-direct {v3, v0, p1}, Lcom/sec/android/gallery3d/data/TimeAllAlbum;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;)V

    return-object v3
.end method
