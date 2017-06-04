.class public Lcom/sec/android/gallery3d/data/FaceSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "FaceSource.java"


# static fields
.field public static final PATH_PREFIX:Ljava/lang/String; = "face"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    const-string/jumbo v0, "face"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/FaceSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FaceSource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/data/LocalFaceImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    return-object v0
.end method
