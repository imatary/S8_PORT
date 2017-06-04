.class Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;
.super Ljava/lang/Object;
.source "UriMediaMMSAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduData"
.end annotation


# instance fields
.field private date:J

.field private id:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->id:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->date:J

    return-wide p1
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->id:J

    return-wide v0
.end method
