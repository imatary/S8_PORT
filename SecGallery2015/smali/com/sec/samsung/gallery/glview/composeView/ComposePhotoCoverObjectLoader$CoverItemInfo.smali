.class Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;
.super Ljava/lang/Object;
.source "ComposePhotoCoverObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverItemInfo"
.end annotation


# instance fields
.field private mDataVersion:J

.field private mItemId:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->mDataVersion:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->mDataVersion:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->mItemId:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->mItemId:I

    return p1
.end method
