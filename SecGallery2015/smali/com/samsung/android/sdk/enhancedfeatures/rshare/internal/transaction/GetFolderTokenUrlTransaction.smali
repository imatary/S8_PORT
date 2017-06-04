.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;
.source "GetFolderTokenUrlTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private final mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mContentToken:Ljava/lang/String;

.field private mGroupid:Ljava/lang/String;

.field private mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mUrlIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;Z[Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mUrlIds:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction$QueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mGroupid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mGroupid:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public start()V
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v5, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mUrlIds:[Ljava/lang/String;

    iput-object v0, v5, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;->url_ids:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    move v4, v1

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->createFolderShareItem(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;ZLcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mContentToken  is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mContentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateFolderToken(Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "group_id"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v14, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "contents_token"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_0
    if-eqz v6, :cond_2

    const/4 v15, 0x0

    :try_start_0
    new-instance v8, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;

    invoke-direct {v8}, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mUrlIds:[Ljava/lang/String;

    iput-object v2, v8, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;->url_ids:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetFolderTokenUrlTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->createFolderShareItemSync(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;ZLcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsRequest;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_1
    if-eqz v15, :cond_1

    iget-object v2, v15, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->folder_token:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$GroupInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "group_id"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "folder_token"

    iget-object v4, v15, Lcom/samsung/android/sdk/ssf/share/io/CreateFolderShareItemsResponse;->folder_token:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v12, v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "last_folder_token_refresh_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const/4 v2, 0x1

    :goto_2
    return v2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move-object v6, v14

    goto :goto_0
.end method
