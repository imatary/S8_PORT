.class public Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;
.super Ljava/lang/Object;
.source "CMHSocialStoryNotificationInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSharedAlbumExistInGalleryNotification(Landroid/content/Context;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v8

    :cond_0
    move v8, v10

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHSocialInterface"

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

.method private static getCursorForGalleryNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->updateWhereClauseGalleryNotificationForHideAlbum(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "count(*)"

    aput-object v3, v2, v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getGalleryNotificationCount(Landroid/content/Context;Z)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getWhereClauseForGalleryNotification(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHSocialStoryNotificationInterface;->getCursorForGalleryNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "CMHSocialInterface"

    const-string/jumbo v4, "no notification! "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v3, "CMHSocialInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New Gallery [Content] Notification Count - CMH Query result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "CMHSocialInterface"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method public static getGalleryNotificationNewActivityCount(Landroid/content/Context;)I
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "status == 0"

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->ACTIVITY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "count(*)"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "CMHSocialInterface"

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v0, "CMHSocialInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New Gallery [ACTIVITY] Notification Count - CMH Query result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private static getWhereClauseForGalleryNotification(Z)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(((is_recommended != 0 AND new_content = 0  AND (file_status = 0 OR file_status = 4 ))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, " OR is_shared = 1 ) AND is_visible = 0 )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "notify_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v2, ") AND is_visible = 0 )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static updateGalleryContentNotificationIntColumn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {p0, v4, v0, p1, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CMHSocialInterface"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateWhereClauseGalleryNotificationForHideAlbum(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "( "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "((bucket_id is null) OR (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "GROUP BY story_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "GROUP BY story_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
