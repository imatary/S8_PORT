.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;
.super Ljava/lang/Object;
.source "GldDBMgr.java"


# direct methods
.method private static containsKey(Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-string/jumbo v8, "type = ?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p0, v4, v9

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "containsKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". DBHandler null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GldDBMgr"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v9

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "type = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    if-eqz v6, :cond_1

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "containsKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GldDBMgr"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v7

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v1

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static declared-synchronized setGldData([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V
    .locals 10

    const/4 v5, 0x0

    const-class v6, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v7, "setGldData "

    const-string/jumbo v8, "GldDBMgr"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    array-length v7, p0

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, p0, v5

    const-string/jumbo v8, "type"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "address"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "scheme"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "port"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getPort()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GLD Data : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "GldDBMgr"

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const-string/jumbo v8, "type = ?"

    invoke-virtual {v1, v3, v4, v8, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    monitor-exit v6

    return-void
.end method
