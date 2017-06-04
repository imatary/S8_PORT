.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompareItemInfo"
.end annotation


# instance fields
.field private final mBucketId:I

.field private final mDateMs:J

.field private final mRotation:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;JII)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mDateMs:J

    iput p4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mRotation:I

    iput p5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mBucketId:I

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mBucketId:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mDateMs:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->mRotation:I

    return v0
.end method
