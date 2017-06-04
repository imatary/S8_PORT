.class public Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowShareItemDownloadCmd.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;,
        Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ShowShareItmDwnloadCmd"


# instance fields
.field private final mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mContext:Landroid/content/Context;

.field private mDownloadListner:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

.field private final mIsCancel:Z

.field private mIsNeedToShare:Z

.field private mIsNeedToVideoPlay:Z

.field private mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mShareId:J

.field private mShareItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

.field private mSuccessCount:I

.field private mTotalCount:I

.field private mTotalSize:I

.field private mUgci:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsCancel:Z

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalSize:I

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mDownloadListner:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToVideoPlay:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mDownloadListner:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->startContentDownload(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToVideoPlay:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;)Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->getString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkContentsType(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    if-ne v5, v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    :cond_2
    :goto_2
    return v4

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_2

    const/4 v4, 0x4

    goto :goto_2
.end method

.method private getDownloadingString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->getString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Z)Ljava/lang/String;
    .locals 11

    const v10, 0x7f0a0139

    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0137

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    instance-of v4, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMediaType()I

    move-result v4

    if-ne v4, v6, :cond_4

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a04c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    instance-of v4, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v7, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getMediaType()I

    move-result v4

    if-ne v4, v6, :cond_7

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a04c1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_2
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0138

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0204

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0204

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->checkContentsType(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz p1, :cond_c

    if-ne v2, v9, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0232

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_a
    if-ne v2, v6, :cond_b

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a04c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0210

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_c
    if-ne v2, v9, :cond_d

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_d
    if-ne v2, v6, :cond_e

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_e
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a013a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method private prepareDownload(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ShowShareItmDwnloadCmd"

    const-string/jumbo v6, "mProgressDialog is showing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object v2, p0

    new-instance v0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;

    invoke-direct {v0, p0, v2}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v5, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalSize:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;

    invoke-direct {v6, p0, v1, v0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;ILandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->getDownloadingString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v8, v6, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mOnProgressListener:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$OnChannelDownloadProgressListener;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    invoke-direct {v5, p0, v8}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mDownloadListner:Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DownloadOriginal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private startContentDownload(Landroid/content/Context;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd$DownloadListner;",
            ")V"
        }
    .end annotation

    if-gtz p2, :cond_0

    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    const-string/jumbo v11, "event id is null !!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    const-string/jumbo v11, "ugci is not available !!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_7

    if-eqz p5, :cond_7

    const/4 v5, 0x0

    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    new-instance v6, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    const-wide/16 v10, 0x0

    invoke-direct {v6, v10, v11}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;-><init>(J)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    if-nez v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setFileSize(Ljava/lang/Long;)V

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'s size is zero!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v6, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->mFileId:I

    iget v10, v6, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->mFileId:I

    if-gtz v10, :cond_6

    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'s file id is zero or -1!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setFileName(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->setOriginalUrl(Ljava/lang/String;)V

    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "item :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "download ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadItem;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Download"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    invoke-direct {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;-><init>()V

    invoke-virtual {v10, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->addContents(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->setDownloadPath(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v10

    if-nez v10, :cond_a

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->init(Landroid/content/Context;)V

    :cond_a
    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareEnhancedFeature;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->downloadContentsPublicMode(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "ShowShareItmDwnloadCmd"

    const-string/jumbo v11, "cancel download"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    aget-object v5, v4, v8

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    aget-object v5, v4, v6

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    const/4 v5, 0x2

    aget-object v2, v4, v5

    check-cast v2, Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    array-length v5, v4

    if-le v5, v7, :cond_0

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToShare:Z

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mIsNeedToVideoPlay:Z

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getChannelId()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getUgci()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalCount:I

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mChannelId:I

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mUgci:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalSize:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    iget v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalSize:I

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileSize()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mTotalSize:I

    goto :goto_1

    :cond_4
    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mSuccessCount:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareId:J

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mShareItems:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->prepareDownload(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 8

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const-string/jumbo v3, "ShowShareItmDwnloadCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onError : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getShareId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
    .locals 6

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const-string/jumbo v3, "ShowShareItmDwnloadCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCancelled: shareId("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;->getShareId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0132

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/samsung/gallery/controller/ShowShareItemDownloadCmd;->EXTERNAL_SD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
