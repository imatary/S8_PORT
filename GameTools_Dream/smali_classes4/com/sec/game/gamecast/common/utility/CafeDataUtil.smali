.class public Lcom/sec/game/gamecast/common/utility/CafeDataUtil;
.super Ljava/lang/Object;
.source "CafeDataUtil.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

.field private mCafeItemTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/game/gamecast/common/model/CafeItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

.field private mGson:Lcom/google/gson/Gson;

.field private mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mGson:Lcom/google/gson/Gson;

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/model/UuidInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Lcom/sec/game/gamecast/common/model/UuidInfo;)Lcom/sec/game/gamecast/common/model/UuidInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeIdFromServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)Lcom/sec/game/gamecast/common/utility/CafeDataListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    return-object v0
.end method

.method private initCafeTable()V
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->loadCafeTableFromPref()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method private queryCafeId(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    iput-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    invoke-direct {p0, v0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->validateTime(Lcom/sec/game/gamecast/common/model/CafeItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NO_CAFE_ID"

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->getCafeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    const/4 v1, 0x0

    const-string/jumbo v2, "NO_CAFE_ID"

    invoke-interface {v0, v1, p1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCurCafeInfo:Lcom/sec/game/gamecast/common/model/CafeItemInfo;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->getCafeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, p1, v1}, Lcom/sec/game/gamecast/common/utility/CafeDataListener;->response(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mCafeDataListener is null"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->validUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeIdFromServer(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateUuidFromGos(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->validUuid()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateCafeIdFromServer(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->updateUuidFromGos(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateCafeIdFromServer(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/model/UuidInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;

    invoke-direct {v2, p0, p1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$4;-><init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/sec/game/gamecast/common/utility/NetworkUtil;->requestCafeId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/game/gamecast/common/utility/NetworkUtil$HttpRequestCallback;)V

    :cond_0
    return-void
.end method

.method private updateUuidFromGos(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/GosQueryUtil;

    move-result-object v0

    new-instance v1, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$3;-><init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/GosQueryUtil;->connectGOS(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private uuidValidateTime(Lcom/sec/game/gamecast/common/model/UuidInfo;)Z
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/model/UuidInfo;->getLocalSyncTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    sub-long v6, v0, v2

    sget-wide v8, Lcom/sec/game/gamecast/common/constant/Define;->GAME_TOOLS_24HOUR:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private validUuid()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getUuidInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mGson:Lcom/google/gson/Gson;

    const-class v3, Lcom/sec/game/gamecast/common/model/UuidInfo;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/game/gamecast/common/model/UuidInfo;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    :cond_0
    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mUuidInfo:Lcom/sec/game/gamecast/common/model/UuidInfo;

    invoke-direct {p0, v1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->uuidValidateTime(Lcom/sec/game/gamecast/common/model/UuidInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private validateTime(Lcom/sec/game/gamecast/common/model/CafeItemInfo;)Z
    .locals 10

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/game/gamecast/common/model/CafeItemInfo;->getLocalSyncTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    sub-long v6, v0, v2

    sget-wide v8, Lcom/sec/game/gamecast/common/constant/Define;->GAME_TOOLS_24HOUR:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;Lcom/sec/game/gamecast/common/utility/CafeDataListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    invoke-direct {p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->initCafeTable()V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeDataListener:Lcom/sec/game/gamecast/common/utility/CafeDataListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->queryCafeId(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mCafeDataListener is null"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadCafeTableFromPref()Ljava/util/HashMap;
    .locals 4

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getCafeIdTable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadCafeTableFromPref : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mGson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$2;

    invoke-direct {v2, p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$2;-><init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)V

    invoke-virtual {v2}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    return-object v1
.end method

.method public performAction(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public saveCafeInfoToPref()V
    .locals 4

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    new-instance v3, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$1;

    invoke-direct {v3, p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$1;-><init>(Lcom/sec/game/gamecast/common/utility/CafeDataUtil;)V

    invoke-virtual {v3}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setCafeIdTable(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current pref : \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCafeTable(Ljava/lang/String;Lcom/sec/game/gamecast/common/model/CafeItemInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->mCafeItemTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/utility/CafeDataUtil;->saveCafeInfoToPref()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
