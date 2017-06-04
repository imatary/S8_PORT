.class Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/EventAlbumManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventItem"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private dateInMs:J

.field private id:I

.field private is_image:Z

.field private lat:D

.field private locality:Ljava/lang/String;

.field private lon:D


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->dateInMs:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->dateInMs:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->lat:D

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->lat:D

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->lon:D

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->lon:D

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->is_image:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->is_image:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->id:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->id:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->locality:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->locality:Ljava/lang/String;

    return-object p1
.end method
