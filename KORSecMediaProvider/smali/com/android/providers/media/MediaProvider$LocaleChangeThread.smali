.class Lcom/android/providers/media/MediaProvider$LocaleChangeThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangeThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string/jumbo v11, "LocaleChangeThread"

    invoke-super {p0, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Start LocaleChangeThread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->-get2(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->-get2(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v11

    const-string/jumbo v13, "external"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {}, Lcom/android/providers/media/utils/SecDatabaseUtil;->setChangedLocale()V

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v0, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iget-object v2, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v12, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v12}, Lcom/android/providers/media/MediaProvider;->-get4(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/providers/media/MediaProvider;->-wrap9(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "volume"

    const-string/jumbo v12, "external"

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "is_date_modified"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    iget-object v13, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    const-class v14, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->-get2(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    :try_start_4
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->-get2(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v11

    const-string/jumbo v13, "internal"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v12

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-static {}, Lcom/android/providers/media/utils/SecDatabaseUtil;->setChangedLocale()V

    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    iget-object v0, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_6
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v0

    iget-object v2, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_7
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    monitor-exit v2

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "volume"

    const-string/jumbo v12, "internal"

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "is_date_modified"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    new-instance v12, Landroid/content/Intent;

    iget-object v13, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    const-class v14, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v6, v12, v4

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Finish LocaleThread. Time : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :catch_0
    move-exception v9

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Failed to setLocale()"

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v0

    throw v11

    :catchall_2
    move-exception v11

    monitor-exit v2

    throw v11

    :catchall_3
    move-exception v11

    monitor-exit v12

    throw v11

    :catch_1
    move-exception v9

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Failed to setLocale()"

    invoke-static {v11, v12, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catchall_4
    move-exception v11

    monitor-exit v0

    throw v11

    :catchall_5
    move-exception v11

    monitor-exit v2

    throw v11

    :catch_2
    move-exception v10

    goto/16 :goto_1

    :catch_3
    move-exception v10

    goto/16 :goto_0
.end method
