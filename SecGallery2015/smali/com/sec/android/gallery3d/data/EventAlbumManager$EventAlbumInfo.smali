.class Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventAlbumInfo"
.end annotation


# instance fields
.field private bucketId:I

.field private count:I

.field private createMonth:Ljava/lang/String;

.field private createTime:Ljava/lang/Long;

.field private locality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->count:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->count:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->locality:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->locality:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->bucketId:I

    return v0
.end method

.method static synthetic access$2502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->bucketId:I

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->createTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->createTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->createMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->createMonth:Ljava/lang/String;

    return-object p1
.end method
