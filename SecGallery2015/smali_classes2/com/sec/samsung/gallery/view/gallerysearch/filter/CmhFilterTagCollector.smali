.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;
.super Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
.source "CmhFilterTagCollector.java"


# static fields
.field public static final CATEGORY_GALLERY_EVENT:I = 0x1

.field private static final CATEGORY_NAMED_LOCATION:I = 0x2

.field private static final CATEGORY_PERSON_NAME:I = 0x3

.field private static final CATEGORY_POI_TYPE:I = 0x7

.field private static final CATEGORY_SCENE_TYPE:I = 0x4

.field private static final CATEGORY_SUBSCENE_TYPE:I = 0x5

.field private static final CATEGORY_USER_TAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CmhFilterTagCollector"

.field private static final mCtegoryURI:Landroid/net/Uri;

.field private static final mSelection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_CATEGORY_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mCtegoryURI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "category_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "category_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "media_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mSelection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addTagList(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->LOCATION:Lcom/sec/samsung/gallery/core/SearchFilterType;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mTagListMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/SearchFilterType;->getValue()I

    move-result v4

    invoke-direct {v2, v3, p1, v4, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->PEOPLE:Lcom/sec/samsung/gallery/core/SearchFilterType;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->EVENT:Lcom/sec/samsung/gallery/core/SearchFilterType;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_4

    const/4 v2, 0x5

    if-ne p2, v2, :cond_5

    :cond_4
    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->USERTAG:Lcom/sec/samsung/gallery/core/SearchFilterType;

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne p2, v2, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/SearchFilterType;->POI:Lcom/sec/samsung/gallery/core/SearchFilterType;

    goto :goto_0
.end method

.method protected setInitTagData()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->initTagList()V

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mCtegoryURI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mSelection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "CmhFilterTagCollector"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-nez v16, :cond_5

    :cond_3
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Category: setInitTagData() : elapsed time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSearchEventTag(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v11, :cond_6

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->addTagList(Ljava/lang/String;I[Ljava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x1

    if-eq v10, v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;->addTagList(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_3
    const-string/jumbo v2, "CmhFilterTagCollector"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_6
    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add Event : setInitTagData() : elapsed time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
