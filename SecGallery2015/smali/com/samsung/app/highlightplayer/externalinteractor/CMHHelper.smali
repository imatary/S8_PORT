.class public Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;
.super Ljava/lang/Object;
.source "CMHHelper.java"


# static fields
.field private static CLOUD_ONLY_MEDIA:I

.field public static final CMH_SUMMARY_URI:Landroid/net/Uri;

.field private static HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

.field private static LOCAL_ONLY_MEDIA:I


# instance fields
.field private CMH_STORY_TABLE_CLOUD_THUMB_PATH:Ljava/lang/String;

.field private CMH_STORY_TABLE_DURATION:Ljava/lang/String;

.field private CMH_STORY_TABLE_FILEPATH:Ljava/lang/String;

.field private CMH_STORY_TABLE_ID:Ljava/lang/String;

.field private CMH_STORY_TABLE_IS_CLOUD:Ljava/lang/String;

.field private CMH_TABLE_FILEID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.cmh/summary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_SUMMARY_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    sput v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CLOUD_ONLY_MEDIA:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->LOCAL_ONLY_MEDIA:I

    const-string/jumbo v0, "HighLightVideoAnalyser"

    sput-object v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "story_id"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_ID:Ljava/lang/String;

    const-string/jumbo v0, "_data"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_FILEPATH:Ljava/lang/String;

    const-string/jumbo v0, "duration"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_DURATION:Ljava/lang/String;

    const-string/jumbo v0, "fileid"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_TABLE_FILEID:Ljava/lang/String;

    const-string/jumbo v0, "is_cloud"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_IS_CLOUD:Ljava/lang/String;

    const-string/jumbo v0, "cloud_thumb_path"

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_CLOUD_THUMB_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFaceDetails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;",
            ">;"
        }
    .end annotation

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :try_start_0
    const-string/jumbo v15, "pos_left"

    const-string/jumbo v17, "pos_top"

    const-string/jumbo v16, "pos_right"

    const-string/jumbo v14, "pos_bottom"

    const-string/jumbo v18, "fileid"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v4, v2

    const/4 v2, 0x1

    aput-object v17, v4, v2

    const/4 v2, 0x2

    aput-object v16, v4, v2

    const/4 v2, 0x3

    aput-object v14, v4, v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_SUMMARY_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v24, " = ?"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v6, v0, [Ljava/lang/String;

    const/16 v24, 0x0

    aput-object p3, v6, v24

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v21

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    sub-long v10, v2, v6

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    sub-long v12, v2, v8

    new-instance v5, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;

    invoke-direct/range {v5 .. v13}, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;-><init>(JJJJ)V

    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_0
    if-eqz v19, :cond_1

    const-string/jumbo v2, "HighLightVideoAnalyser"

    const-string/jumbo v3, "Closing HLV cursor from getFaceDetails method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v22

    :catch_0
    move-exception v20

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_1

    const-string/jumbo v2, "HighLightVideoAnalyser"

    const-string/jumbo v3, "Closing HLV cursor from getFaceDetails method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v19, :cond_2

    const-string/jumbo v3, "HighLightVideoAnalyser"

    const-string/jumbo v5, "Closing HLV cursor from getFaceDetails method"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public getMediaDetails(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    sget v15, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->LOCAL_ONLY_MEDIA:I

    const/4 v10, 0x0

    const-string/jumbo v19, ""

    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_ID:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_TABLE_FILEID:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_FILEPATH:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_DURATION:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_IS_CLOUD:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_CLOUD_THUMB_PATH:Ljava/lang/String;

    aput-object v2, v3, v1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/highlightplayer/util/Constants;->CMH_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_TABLE_FILEID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_FILEPATH:Ljava/lang/String;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_DURATION:Ljava/lang/String;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static/range {p2 .. p2}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

    const-string/jumbo v2, " isSupportedCMHVersion in getMediaDetails while reading is cloud value "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_IS_CLOUD:Ljava/lang/String;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v8, -0x1

    sget v1, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CLOUD_ONLY_MEDIA:I

    if-ne v15, v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/util/Utils;->setIsCloudFile(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_CLOUD_THUMB_PATH:Ljava/lang/String;

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p2}, Lcom/samsung/app/highlightplayer/util/Utils;->getPosRatio(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v13}, Lcom/samsung/app/highlightplayer/util/Utils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/app/highlightplayer/util/Utils;->setIsValidCloudFile(Z)V

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Cloud thumbnail deleted from user : No file exists in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v12

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v17

    :cond_1
    const/4 v1, 0x4

    :try_start_2
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_ID:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_TABLE_FILEID:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_FILEPATH:Ljava/lang/String;

    aput-object v2, v3, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->CMH_STORY_TABLE_DURATION:Ljava/lang/String;

    aput-object v2, v3, v1

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/samsung/app/highlightplayer/util/Utils;->getPosRatio(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v13}, Lcom/samsung/app/highlightplayer/util/Utils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Cloud thumbnail deleted from user : No file exists in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    :try_start_3
    sget-object v1, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

    const-string/jumbo v2, " is NOTTTT SupportedCMHVersion in getMediaDetails while populating posRatioMap "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Lcom/samsung/app/highlightplayer/util/Utils;->isSupportedCMHVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

    const-string/jumbo v2, " isSupportedCMHVersion in getMediaDetails while populating posRatioMap "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    aput-object v19, v7, v1

    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils;->posRatioMap:Ljava/util/HashMap;

    invoke-virtual {v1, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object v1, Lcom/samsung/app/highlightplayer/externalinteractor/CMHHelper;->HIGHLIGHT_VIDEO_LOG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCloud = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "  filePath = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_6
    :try_start_4
    sget-object v1, Lcom/samsung/app/highlightplayer/util/Utils;->posFaceRectMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v1, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corresponding file path and duration is not found for the id in CMH table "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Corresponding file path and duration is not found for the id in CMH table "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
