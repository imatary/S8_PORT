.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageEntry"
.end annotation


# instance fields
.field private failToLoad:Z

.field private fullImage:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

.field private fullImageTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private isBrokenImage:Z

.field private mLargeImage:Lcom/sec/samsung/gallery/decoder/LargeImage;

.field private mLargeImage2:Lcom/sec/samsung/gallery/decoder/LargeImage;

.field private requestedFullImage:J

.field private requestedScreenNail:J

.field public rotation:I

.field screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private screenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private screenNailTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/android/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isBrokenImage:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mLargeImage:Lcom/sec/samsung/gallery/decoder/LargeImage;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mLargeImage:Lcom/sec/samsung/gallery/decoder/LargeImage;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mLargeImage2:Lcom/sec/samsung/gallery/decoder/LargeImage;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->mLargeImage2:Lcom/sec/samsung/gallery/decoder/LargeImage;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isBrokenImage:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->isBrokenImage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/sec/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailTask:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/sec/android/gallery3d/util/Future;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImageTask:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->fullImage:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    return-object p1
.end method
