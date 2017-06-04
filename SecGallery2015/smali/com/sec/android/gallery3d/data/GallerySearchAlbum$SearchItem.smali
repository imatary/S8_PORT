.class public Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;
.super Ljava/lang/Object;
.source "GallerySearchAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/GallerySearchAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchItem"
.end annotation


# instance fields
.field private final mDate:Ljava/lang/Long;

.field private final mId:I

.field private final mIsCloud:Z

.field private final mPosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Long;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mId:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mDate:Ljava/lang/Long;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mPosition:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mIsCloud:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mDate:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;->mIsCloud:Z

    return v0
.end method
