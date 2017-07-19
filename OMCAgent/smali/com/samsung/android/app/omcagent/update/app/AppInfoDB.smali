.class public Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;
.super Ljava/lang/Object;
.source "AppInfoDB.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->newAppInfo(Landroid/database/Cursor;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isExist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private newAppInfo(Landroid/database/Cursor;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;-><init>()V

    const-string v1, "package"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setPackageName(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setType(I)V

    const-string v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setState(I)V

    const-string v1, "mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setMode(I)V

    const-string v1, "network_charge"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setNetworkCharge(I)V

    const-string v1, "network_prefer"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setNetworkPrefe(I)V

    const-string v1, "operator"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setOperator(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setTitle(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setDescription(Ljava/lang/String;)V

    const-string v1, "versioncode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionCode(I)V

    const-string v1, "versionname"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setVersionName(Ljava/lang/String;)V

    const-string v1, "signature"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setSignature(Ljava/lang/String;)V

    const-string v1, "icon_drawable"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setIconDrawable([B)V

    const-string v1, "icon_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setIconUrl(Ljava/lang/String;)V

    const-string v1, "content_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setContentUrl(Ljava/lang/String;)V

    const-string v1, "content_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setContentSize(J)V

    const-string v1, "result"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->setResult(I)V

    return-object v0
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "package"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "state"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mode"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "network_charge"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getNetworkCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "network_prefer"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getNetworkPrefer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "operator"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already isExist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public deleteAll(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteAppInfoExceptInstalledMandatory(Landroid/content/Context;)V
    .locals 4

    const-string v0, "mode ! ? "

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getAppCount(Landroid/content/Context;)I
    .locals 4

    const-string v0, "type = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getInstallableAppCount(Landroid/content/Context;)I
    .locals 5

    const/16 v4, 0xa

    const-string v0, "type = ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getInstalledAppCount(Landroid/content/Context;)I
    .locals 4

    const-string v0, "state in (?, ?)"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public getInstalledOptionalAppCount(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x2

    const-string v0, "state in (?, ?) AND mode == ?"

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public isAllInstalled(Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v3, "type = ? AND state != ? AND state != ? AND state != ?"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/16 v0, 0x194

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x2

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isDownloading(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "type = ? AND state in (?, ?, ?)"

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isExist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isFinished(Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, "type = ? AND state in (?, ?, ?, ?)"

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x2

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return v8

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    move v0, v7

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isInstallableMandatoryAppDetected(Landroid/content/Context;)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const-string v0, "type = ? AND mode == ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xd

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0xb

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isExist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isInstalling(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "type = ? AND state in (?, ?, ?, ?, ?, ?)"

    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isExist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isInstallingforsetupwizard(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x2

    const-string v0, "type = ? AND mode = ? AND state in (?, ?, ?, ?, ?, ?)"

    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isExist(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public readAppFailedTitleList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v1

    const-string v3, "state in (?, ?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0x190

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/16 v0, 0x2bc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor count is zero"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    goto :goto_0
.end method

.method public readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    .locals 7

    const/4 v2, 0x0

    const-string v3, "type = ? AND package = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor count is zero"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->newAppInfo(Landroid/database/Cursor;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public readAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAppInstalledTitleList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v1

    const-string v3, "state in (?)"

    new-array v4, v8, [Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor count is zero"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    goto :goto_0
.end method

.method public readAppInstallingTitleList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v1

    const-string v3, "type = ? AND state in (?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/16 v0, 0xbe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor count is zero"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    goto :goto_0
.end method

.method public readAvailableAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND state in (?)"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-string v0, "type = ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableMandantoryAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "type = ? AND mode != ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableMandatoryAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v3, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v0, "type = ? AND mode in (?, ?) AND state in (?, ?, ?, ?, ?, ?, ?)"

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableMandatoryAppInfoListForSetupWizard(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const-string v0, "type = ? AND mode in (?, ?) AND state in (?, ?, ?, ?, ?, ?)"

    const/16 v2, 0x9

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x4

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableOptionalAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x2

    const-string v0, "type = ? AND mode = ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableOptionalAppInfoListInSetupWizard(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x2

    const-string v0, "type = ? AND mode = ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readAvailableOptionalAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "type = ? AND mode = ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readCheckableAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xa

    const-string v0, "type = ? AND state in (?)"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readDownloadableAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xa

    const-string v0, "type = ? AND operator = ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xe

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOperator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0xb

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readDownloadableOptionalAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x2

    const-string v0, "type = ? AND mode = ? AND state in (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/16 v2, 0xd

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0xb

    const/16 v3, 0xaa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readDownloadedAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND state in (?)"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readDownloadingAppCount(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND state in (?,?,?)"

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readHoldingAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND state in (?, ?)"

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x9b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstallableAppInfoListExceptMandantoryApp_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "type = ? AND mode != ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstallableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v3, 0x0

    const-string v0, "type = ? AND state != ? AND state != ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstallableMandantoryAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "type = ? AND mode = ? AND state != ? AND state != ? AND state != ?"

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x194

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstallableOptionalAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const-string v0, "type = ? AND mode = ? AND state in (?, ?)"

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstalledBackgroundAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND mode = ?"

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readInstallingAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "type = ? AND state in (?, ?, ?, ?, ?, ?)"

    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->newAppInfo(Landroid/database/Cursor;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public readInstallingAppInfoList_ToResume(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "type = ? AND state in (?, ?, ?, ?, ?, ?, ?)"

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "cursor is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-object v6

    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v7}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->newAppInfo(Landroid/database/Cursor;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public readNeedToReportAppInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "type = ? AND state in (?,?,?,?)"

    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x2bc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x200

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readWatingWifiAppInfoListCnt_V4(Landroid/content/Context;)I
    .locals 4

    const-string v0, "state = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public readWatingWifiAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "state = ?"

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public readstartedAppCount(Landroid/content/Context;)I
    .locals 4

    const-string v0, "type = ? AND state in (?,?,?,?,?)"

    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xa0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x96

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public updateIcon(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    .locals 5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "icon_drawable"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconDrawable()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "package = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateOmcAppCheckResponse(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    .locals 5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "title"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versioncode"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "versionname"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon_url"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "result"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "package = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateOmcAppDownloadResponse(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "versioncode"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "versionname"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "signature"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_size"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "content_url"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "result"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "package = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateState(Landroid/content/Context;Lcom/samsung/android/app/omcagent/update/app/AppInfo;)I
    .locals 5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "result"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "mode"

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "package = ?"

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateStateToReady(Landroid/content/Context;)I
    .locals 5

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "type = ? AND state in (?, ?, ?, ?, ?, ?)"

    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x6e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x96

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const/16 v4, 0xaa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateStateToWaitForMandatoryApp(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    const/16 v4, 0x4b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mode = ? AND state = ?"

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcContentProvider;->APP_ITEMS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateStateToWaitForMandatoryAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "state"

    const/16 v4, 0x4b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "mode = ? AND state = ?"

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->getAppInfos(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
