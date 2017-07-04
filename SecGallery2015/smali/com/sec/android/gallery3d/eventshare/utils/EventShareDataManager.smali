.class public Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
.super Ljava/lang/Object;
.source "EventShareDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final EVENT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_EVENT_EXTRA_OBJECT:I = 0x0

.field private static final INDEX_EVENT_ID:I = 0x1

.field private static final INDEX_EVENT_REQUEST:I = 0x2

.field private static final INDEX_EVENT_REQUEST_STATE:I = 0x0

.field private static final INDEX_EVENT_RUNNING_TYPE:I = 0x1

.field private static final INDEX_EVENT_SHARE_ID:I = 0x3

.field private static final INDEX_EVENT_UGCI:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECOVER_PROJECTION:[Ljava/lang/String;

.field private static final STATE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EventShareDataManager"

.field private static final UGCI_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;


# instance fields
.field private final mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "event_request_state"

    aput-object v1, v0, v2

    const-string/jumbo v1, "event_running_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "event_request"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "event_ugci"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->UGCI_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "event_request_state"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->STATE_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->ID_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "event_extra_object"

    aput-object v1, v0, v2

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "event_request"

    aput-object v1, v0, v4

    const-string/jumbo v1, "event_share_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->RECOVER_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->COUNT_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "event_ugci"

    aput-object v1, v0, v3

    const-string/jumbo v1, "event_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "event_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "event_state"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "event_request"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "event_request_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "event_running_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "event_share_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "event_extra_object"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->EVENT_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    return-void
.end method

.method private constructor <init>(Lcom/sec/samsung/gallery/util/LocalDatabaseManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    return-void
.end method

.method private getByteFromExtraInfo(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)[B
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "EventShareDataManager"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExtraInfoFromByte([B)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;
    .locals 7

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    :goto_1
    const-string/jumbo v5, "EventShareDataManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
    .locals 3

    const-class v1, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    if-nez v0, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    sput-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Lcom/sec/samsung/gallery/util/LocalDatabaseManager;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;-><init>(Lcom/sec/samsung/gallery/util/LocalDatabaseManager;)V

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->sInstance:Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private recoverIntent(Landroid/content/Context;IIJLcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Landroid/content/Intent;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/gallery3d/eventshare/event/EventShareService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelAllInfo(Landroid/content/Context;I)Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "EventShareDataManager"

    const-string/jumbo v3, "error channel info."

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_NAME"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p6, :cond_0

    const-string/jumbo v2, "SHARE_EVENT_CONTACT_URIS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$000(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_URIS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$100(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_EXTRA_INFO"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :sswitch_1
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_SYNC_TIME"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getSyncTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_UGCI"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getUGCI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_NAME"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :sswitch_2
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_4

    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_SHARE_ID"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "SHARE_EVENT_REQUEST_TYPE"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_NAME"

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_ID"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p6, :cond_0

    const-string/jumbo v2, "SHARE_EVENT_CONTACT_URIS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$000(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_URIS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$100(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "SHARE_EVENT_FILE_LOCAL_PATHS"

    invoke-static {p6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v2, "EventShareExtraInfo"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x11 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public contains(I)Z
    .locals 9

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "event_id"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "EventShareDataManager"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getBrokenUgci()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->UGCI_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "event_type= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "EventShareDataManager"

    const-string/jumbo v1, "query fail!"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v7, v8

    :goto_0
    return-object v7

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getCountRunningStateWithId()I
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v3, "event_running_type= ? and event_request_state= ?"

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "EventShareDataManager"

    const-string/jumbo v1, "query fail!"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getEventData()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/eventshare/EventShareData;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event_id"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ">0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "event_share_operation"

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->EVENT_INFO_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "EventShareDataManager"

    const/4 v3, 0x1

    const-string/jumbo v4, "No data in Local Event DB"

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v13

    :cond_1
    :try_start_1
    new-instance v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;

    invoke-direct {v12}, Lcom/sec/android/gallery3d/eventshare/EventShareData;-><init>()V

    const-string/jumbo v2, "event_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->id:I

    const-string/jumbo v2, "event_ugci"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->ugci:Ljava/lang/String;

    const-string/jumbo v2, "event_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->name:Ljava/lang/String;

    const-string/jumbo v2, "event_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I

    const-string/jumbo v2, "event_state"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    const-string/jumbo v2, "event_request"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    const-string/jumbo v2, "event_request_state"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const-string/jumbo v2, "event_running_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    const-string/jumbo v2, "event_share_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->shareId:I

    const-string/jumbo v2, "EventShareDataManager"

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Local Event DB (  Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ugci: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->ugci:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$EventType;->TYPE_NAME:[Ljava/lang/String;

    iget v6, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->type:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    iget v6, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Request State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestState;->TYPE_NAME:[Ljava/lang/String;

    iget v6, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Running Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RunningState;->TYPE_NAME:[Ljava/lang/String;

    iget v6, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Share ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->shareId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "event_extra_object"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    const/4 v11, 0x0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getExtraInfoFromByte([B)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    move-result-object v11

    :cond_2
    if-eqz v11, :cond_5

    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$000(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v8

    const-string/jumbo v2, "EventShareDataManager"

    const-string/jumbo v3, "# Contact list"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    const-string/jumbo v2, "EventShareDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    iget-object v3, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v2, "EventShareDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->contactList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$100(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v15

    const-string/jumbo v2, "EventShareDataManager"

    const-string/jumbo v3, "# File List"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->fileList:Ljava/util/ArrayList;

    const-string/jumbo v2, "EventShareDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_4

    iget-object v3, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->fileList:Ljava/util/ArrayList;

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v2, "EventShareDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->fileList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v11}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;->access$200(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v2, "EventShareDataManager"

    const-string/jumbo v3, "# path List"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->localPathFileList:Ljava/util/ArrayList;

    const-string/jumbo v2, "EventShareDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    iget-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->localPathFileList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v3, "EventShareDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v12, Lcom/sec/android/gallery3d/eventshare/EventShareData;->localPathFileList:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "EventShareDataManager"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;
    .locals 10

    const/4 v8, 0x0

    new-instance v7, Lcom/sec/android/gallery3d/eventshare/EventShareData;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/eventshare/EventShareData;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "event_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "EventShareDataManager"

    const-string/jumbo v1, "query fail!"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v7, v8

    :goto_0
    return-object v7

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getStateWithId(I)I
    .locals 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->STATE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "event_id= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "EventShareDataManager"

    const-string/jumbo v1, "query fail: "

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getWaitingIntentsFromRecover(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 12

    const/4 v7, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "event_id"

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "event_share_operation"

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->RECOVER_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getExtraInfoFromByte([B)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    move-result-object v6

    :goto_0
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->recoverIntent(Landroid/content/Context;IIJLcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v10

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "EventShareDataManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 7

    move-object v1, p2

    check-cast v1, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    if-eqz v1, :cond_0

    :try_start_0
    instance-of v4, p2, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "event_extra_object"

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getByteFromExtraInfo(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addShareEvent(Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string/jumbo v4, "EventShareDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "insert : rowID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "EventShareDataManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(ILandroid/content/ContentValues;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->update(ILandroid/content/ContentValues;Ljava/lang/Object;)V

    return-void
.end method

.method public update(ILandroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "event_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    instance-of v5, p3, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    if-eqz v5, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;

    move-object v3, v0

    const-string/jumbo v5, "event_extra_object"

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getByteFromExtraInfo(Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager$ExtraInfo;)[B

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->mLocalDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v6, "event_share_operation"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v4, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "EventShareDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update : count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "EventShareDataManager"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
