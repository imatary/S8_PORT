.class Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChannelStateEvent"
.end annotation


# instance fields
.field mAddr:[B

.field mAppId:I

.field mCfgIndex:I

.field mChannelId:I

.field mFd:Ljava/io/FileDescriptor;

.field mState:I

.field final synthetic this$0:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->this$0:Lcom/android/bluetooth/hdp/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAppId:I

    iput-object p3, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mAddr:[B

    iput p4, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mCfgIndex:I

    iput p6, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mState:I

    iput p5, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mChannelId:I

    iput-object p7, p0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;)V

    return-void
.end method
