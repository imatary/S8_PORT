.class public Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventAlbumEntry"
.end annotation


# instance fields
.field public final albumCreateTime:J

.field public final bucketId:I

.field public final hvStatus:I

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(IJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->bucketId:I

    iput-wide p2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    iput p5, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->hvStatus:I

    return-void
.end method

.method synthetic constructor <init>(IJLjava/lang/String;ILcom/sec/android/gallery3d/data/EventAlbumManager$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;-><init>(IJLjava/lang/String;I)V

    return-void
.end method
