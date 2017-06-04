.class public Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;
.super Ljava/lang/Object;
.source "VideoPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/VideoPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPlayInfo"
.end annotation


# instance fields
.field private final mBucketId:I

.field private final mCategoryType:I

.field private final mIsSharedEvent:Z

.field private final mItemId:I

.field private final mNearbyDeviceId:Ljava/lang/String;

.field private final mNearbyDeviceNic:Ljava/lang/String;

.field private final mNearbyProviderName:Ljava/lang/String;

.field private final mNearbyThumbUri:Landroid/net/Uri;

.field private final mSCloudId:I

.field private final mSearchKeyword:Ljava/lang/String;

.field private final mSeedString:Ljava/lang/String;

.field private final mSortBy:I

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final resume_pos:J


# direct methods
.method public constructor <init>(IIIILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mCategoryType:I

    iput p1, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mBucketId:I

    iput p3, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mItemId:I

    iput p4, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSortBy:I

    iput-object p5, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mUris:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSearchKeyword:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyDeviceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSeedString:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyThumbUri:Landroid/net/Uri;

    move/from16 v0, p12

    iput v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSCloudId:I

    iput-object p10, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyDeviceNic:Ljava/lang/String;

    iput-object p11, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyProviderName:Ljava/lang/String;

    if-nez p13, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mIsSharedEvent:Z

    :goto_0
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->resume_pos:J

    return-void

    :cond_0
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mIsSharedEvent:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getBucketId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getCategoryType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getNearbyProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getIsSharedEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getSeekTo()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getUris()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getItemId()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getSortBy()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getSearchKeyword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getNearbyDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getSeedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getNearbyThumbUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getSCloudId()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->getNearbyDeviceNic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mBucketId:I

    return v0
.end method

.method private getCategoryType()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mCategoryType:I

    return v0
.end method

.method private getIsSharedEvent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mIsSharedEvent:Z

    return v0
.end method

.method private getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mItemId:I

    return v0
.end method

.method private getNearbyDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method private getNearbyDeviceNic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyDeviceNic:Ljava/lang/String;

    return-object v0
.end method

.method private getNearbyProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyProviderName:Ljava/lang/String;

    return-object v0
.end method

.method private getNearbyThumbUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mNearbyThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getSCloudId()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSCloudId:I

    return v0
.end method

.method private getSearchKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSearchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method private getSeedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSeedString:Ljava/lang/String;

    return-object v0
.end method

.method private getSeekTo()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->resume_pos:J

    return-wide v0
.end method

.method private getSortBy()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mSortBy:I

    return v0
.end method

.method private getUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;->mUris:Ljava/util/ArrayList;

    return-object v0
.end method
