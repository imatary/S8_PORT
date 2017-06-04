.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;
.source "UploadTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    }
.end annotation


# static fields
.field private static final CHUNK_PROJECTION:[Ljava/lang/String;

.field private static final DIRTY_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CONTENT_PROJECTION:[Ljava/lang/String;

.field private mCallShareTransaction:Z

.field private mCompleteContentCount:I

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContentCountReal:J

.field private mDirName:Ljava/lang/String;

.field private mDirtyContentCount:I

.field private mHandler:Landroid/os/Handler;

.field private mInputStream:Ljava/io/InputStream;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

.field public mMediaSize:J

.field private mMediaSizeOffset:J

.field private mMediaSizeReal:J

.field mPercentage:I

.field private mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

.field private mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

.field private mReqToken:J

.field private mRestored:Z

.field private mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mStarted:Z

.field private mStopped:Z

.field private mTag:Ljava/lang/Object;

.field private mToken:I

.field private mTotalContentCount:I

.field private mTotalProgressInflight:J

.field private mTotalProgressReal:J

.field private mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

.field private mUploadDone:Z

.field private mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private refreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

.field private share:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "file_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->DIRTY_PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "chunk_index"

    aput-object v1, v0, v2

    const-string/jumbo v1, "byte_offset"

    aput-object v1, v0, v3

    const-string/jumbo v1, "byte_length"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "recipient_ids"

    aput-object v1, v0, v2

    const-string/jumbo v1, "content_count"

    aput-object v1, v0, v3

    const-string/jumbo v1, "status"

    aput-object v1, v0, v4

    const-string/jumbo v1, "size"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "media_progress_real"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "complete_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dir"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "req_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;Z)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;J)V

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "path"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "public_url"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "upload_key"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "file_size"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "filename"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "chunk_size"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "chunk_count"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "content_type"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "progress_real"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "tag"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPercentage:I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mRestored:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContentCountReal:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v2, 0x7530

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCallShareTransaction:Z

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->refreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "700452"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    iput-boolean p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCallShareTransaction:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "number format exception, set tag without prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->refreshIsListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContentCountReal:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I

    return p1
.end method

.method static synthetic access$2108(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadDone:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCallShareTransaction:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->finishOrsUpload()V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->postProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->makeResponse(Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->makeResponse(Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stopByError(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I

    return v0
.end method

.method static synthetic access$3008(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mDirtyContentCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getMediaData()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeOffset:J

    return-wide p1
.end method

.method static synthetic access$3500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadShareContentsResponse:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadShareContentsResponse;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getSharedItem(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J

    return-wide v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method private finishOrsUpload()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCallShareTransaction:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->share:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->share:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->start()V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getOutboxContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "public_url"

    aput-object v0, v4, v7

    const/4 v0, 0x1

    const-string/jumbo v1, "media_status"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "tag"

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    const/16 v1, 0x1e

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMediaData()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "media_id"

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "extra_req_token"

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method private getSharedItem(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;-><init>()V

    const-string/jumbo v1, "public_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;->setWebUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;->setTag(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeResponse(Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPublicUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setSize(J)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setTimestamp(J)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setRevision(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setAuthCode(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeResponse(Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setOid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setPublicUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setSize(J)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setTimestamp(J)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setRevision(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadContentsResponse;->setAuthCode(Ljava/lang/String;)V

    return-object v0
.end method

.method private postProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V
    .locals 11

    const/16 v10, 0x2f

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getMediaData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "extra_progress_file_name"

    iget-object v5, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "extra_progress_byte"

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "extra_progress_total_file_length"

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "extra_progress_media_bytes"

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "extra_media_size"

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSizeReal:J

    add-long/2addr v6, v8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mSendQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    const-string/jumbo v4, "extra_progress_file_count"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "extra_progress_total_file_count"

    iget v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "extra_progress_content_data"

    iget-object v5, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentData:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "extra_req_token"

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "media_id"

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v4, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    long-to-float v4, v4

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Progress "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " percent ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") Total progressReal bytes = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressInflight:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPercentage:I

    if-eq v4, v3, :cond_0

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPercentage:I

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$4;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;Landroid/os/Bundle;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStarted:Z

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;)V

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private restoreQuota()V
    .locals 10

    const-wide/16 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mRestored:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mRestored:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "byte_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    sub-long v6, v4, v8

    cmp-long v1, v6, v2

    if-lez v1, :cond_2

    move-wide v2, v6

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restore usage "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v8, " -> "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    invoke-static {v1, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->putQuota(Ljava/lang/Long;Ljava/lang/Long;)Z

    goto :goto_0
.end method

.method private stop(IILjava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already stopped mid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {v13, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->getMediaData()Landroid/os/Bundle;

    move-result-object v12

    if-eqz p3, :cond_2

    const-string/jumbo v2, "extra_error_detail"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "[WakeLock] release pm lock"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const/4 v2, 0x5

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    move/from16 v0, p2

    if-eq v0, v2, :cond_4

    invoke-static/range {p2 .. p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mReqToken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-virtual {v10, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;

    invoke-interface {v2, v10}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/UploadShareContentsListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "status"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "error"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_5

    const-string/jumbo v2, "error_detail"

    move-object/from16 v0, p3

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string/jumbo v2, "byte_usage"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string/jumbo v2, "quota"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    new-instance v16, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    const-string/jumbo v2, " ["

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    const-string/jumbo v2, "Canceled"

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->restoreQuota()V

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fail upload, mi="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " st="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "comCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mCompleteContentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " realCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalContentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mTotalProgressReal:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " topr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaSize:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaDuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private stopByError(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x191

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->share:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xc9

    const-string/jumbo v1, "Canceled"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public pause(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mUploadDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->share:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ShareTransaction;->pause(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12c

    const-string/jumbo v1, "Paused"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->stop(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mMediaId:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getOutboxContentUri(J)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "content_status!=?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;

    const/16 v1, 0x1d

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->DIRTY_PROJECTION:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/UploadTransaction;->mStopped:Z

    return-void
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TOKEN_UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "TOKEN_GET_CONTENTS_TO_UPLOAD"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "TOKEN_GET_OR_CREATE_CHUNKS"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "TOKEN_DELETE_CHUNK_UPLOADED"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "TOKEN_UPDATE_CONTENTS_REMOTE_URL"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "TOKEN_GET_MEDIA_TO_UPLOAD"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "TOKEN_START_MUPLOAD"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "TOKEN_UPLOAD_CHUNK"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "TOKEN_END_MUPLOAD"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "TOKEN_NEXT_CONTENT"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "TOKEN_GET_QUOTA"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "TOKEN_UPLOAD_FILE"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "TOKEN_UPLOAD_PROGRESS"

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "TOKEN_UPDATE_PROGRESS"

    goto :goto_0

    :pswitch_e
    const-string/jumbo v0, "TOKEN_UPDATE_MULTIPLE_UPLOAD_KEY"

    goto :goto_0

    :pswitch_f
    const-string/jumbo v0, "TOKEN_START_MULTI_MUPLOAD"

    goto :goto_0

    :pswitch_10
    const-string/jumbo v0, "TOKEN_UPDATE_MEDIA_TO_COMPLETE"

    goto :goto_0

    :pswitch_11
    const-string/jumbo v0, "TOKEN_END_MUPLOAD_ONLY"

    goto :goto_0

    :pswitch_12
    const-string/jumbo v0, "TOKEN_UPDATE_MEDIA_TO_ON_PROGRESS"

    goto :goto_0

    :pswitch_13
    const-string/jumbo v0, "TOKEN_UPDATE_MEDIA_TO_STOP"

    goto :goto_0

    :pswitch_14
    const-string/jumbo v0, "TOKEN_CHECK_MEDIA_DIRTY"

    goto :goto_0

    :pswitch_15
    const-string/jumbo v0, "TOKEN_GET_CONTENTS_LIST"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_13
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
