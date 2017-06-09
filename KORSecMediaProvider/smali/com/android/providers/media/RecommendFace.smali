.class public Lcom/android/providers/media/RecommendFace;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/RecommendFace$1;,
        Lcom/android/providers/media/RecommendFace$CompareItem;,
        Lcom/android/providers/media/RecommendFace$FaceItem;,
        Lcom/android/providers/media/RecommendFace$SimilarPerson;
    }
.end annotation


# static fields
.field private static CONFIRM_SIMILARITY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFR:I

.field private mFaceCopector:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d4c

    sput v0, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/providers/media/RecommendFace$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RecommendFace$1;-><init>(Lcom/android/providers/media/RecommendFace;)V

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    iput p2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    iput-object p1, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getGroupSimilarity(I)I
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "limit"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "similarity"

    aput-object v3, v2, v9

    const-string/jumbo v3, "group_id=? and similarity>0"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getRegisteredPersons()[I
    .locals 12

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v10, 0x0

    const-string/jumbo v11, "select _id from persons where _id>1"

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v10, v6, [I

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v8, 0x1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v10, v8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v8, v9

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v10

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getSimilarPersons()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v9, 0x0

    const-string/jumbo v11, "select _id from persons where _id>1"

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    :goto_0
    :try_start_1
    new-instance v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/providers/media/RecommendFace$SimilarPerson;-><init>(Lcom/android/providers/media/RecommendFace$SimilarPerson;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_0

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object v9, v10

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    move-object v9, v10

    move-object v7, v8

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v9, v10

    goto :goto_1
.end method

.method private getUnconfirmedGroups()[I
    .locals 14

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "select distinct group_id from faces where group_id>0 and recommended_id>1 and person_id=1 and similarity<%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget v12, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v13

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v9, 0x0

    new-array v8, v6, [I

    move v10, v9

    :goto_0
    add-int/lit8 v9, v10, 0x1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getUngroupFacesNoRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "select _id,face_data from faces where auto_group>0 and group_id=0 and recommended_id=%2$d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v9, 0x0

    new-array v8, v6, [Lcom/android/providers/media/RecommendFace$FaceItem;

    :cond_0
    new-instance v2, Lcom/android/providers/media/RecommendFace$FaceItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace$FaceItem;)V

    aput-object v2, v8, v9

    aget-object v2, v8, v9

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    aget-object v2, v8, v9

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getUngroupFacesRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;
    .locals 13

    const/4 v5, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "select _id,face_data,similarity from faces where auto_group>0 and group_id=0 and recommended_id>1 and similarity<%d"

    new-array v5, v5, [Ljava/lang/Object;

    sget v11, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v12

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v9, 0x0

    new-array v8, v6, [Lcom/android/providers/media/RecommendFace$FaceItem;

    :cond_0
    new-instance v2, Lcom/android/providers/media/RecommendFace$FaceItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace$FaceItem;)V

    aput-object v2, v8, v9

    aget-object v2, v8, v9

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    aget-object v2, v8, v9

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    aget-object v2, v8, v9

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getUnrecommendGroups()[I
    .locals 12

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v11, "select distinct group_id from faces where group_id>0 and recommended_id=1"

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v9, 0x0

    new-array v8, v6, [I

    move v10, v9

    :goto_0
    add-int/lit8 v9, v10, 0x1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private loadGroup(I)I
    .locals 14

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "limit"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "face_data"

    aput-object v3, v2, v13

    const-string/jumbo v3, "group_id=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v13

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v8, v6, [I

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v10, 0x1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-lez v6, :cond_2

    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v2, v8, v6, v13}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    :cond_2
    return v9

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private loadGroupKey(I)I
    .locals 13

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "select face_data from faces where person_id=%1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v4, v12

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    new-array v9, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v7, v6, 0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v9, v6

    const/16 v2, 0x1e

    if-ge v7, v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_5

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v7

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v6, :cond_3

    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v3, 0x1

    invoke-static {v2, v9, v6, v3}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v10

    :cond_3
    return v10

    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :catchall_1
    move-exception v2

    move v6, v7

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method private unloadGroup(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v0, p1}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRecomendedId(I)[I
    .locals 19

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "select face_data from faces where _id=%1$d and auto_group>0"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v18, 0x0

    aput-object v6, v5, v18

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v3, 0x0

    aget v3, v8, v3

    if-gez v3, :cond_3

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v3

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v8, v4, v5}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getSimilarPersons()Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v3, v10, v9}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v3

    iput v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mScore:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    return-object v3

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x3

    if-le v12, v3, :cond_6

    const/4 v14, 0x3

    :goto_1
    if-lez v14, :cond_7

    new-array v13, v14, [I

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    aput v3, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    move v14, v12

    goto :goto_1

    :cond_7
    return-object v13
.end method

.method public recomendFaces(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v6

    const/4 v5, 0x0

    const/4 v9, 0x0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUnrecommendGroups()[I

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    :goto_0
    array-length v12, v7

    if-ge v8, v12, :cond_3

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    const/4 v9, 0x0

    aget v12, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->loadGroup(I)I

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    const/16 v12, 0x157c

    if-le v9, v12, :cond_1

    const-string/jumbo v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "similarity"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string/jumbo v13, "group_id=? and person_id=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    aget v15, v7, v8

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v2, v12, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUngroupFacesNoRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v12, 0x1

    new-array v3, v12, [I

    const/4 v10, 0x0

    const/4 v8, 0x0

    :goto_1
    array-length v12, v4

    if-ge v8, v12, :cond_6

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    aget-object v12, v4, v8

    iget v12, v12, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    const/4 v13, 0x0

    aput v12, v3, v13

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v3, v13, v14}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    const/16 v12, 0x157c

    if-le v9, v12, :cond_4

    const-string/jumbo v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "similarity"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v12, v4, v8

    iget v12, v12, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    if-ltz v12, :cond_4

    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    aget-object v13, v4, v8

    iget v13, v13, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    int-to-long v14, v13

    invoke-static {v12, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const-string/jumbo v12, "recommended_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    return-void
.end method

.method public recomendUnconfirmedFaces(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUnconfirmedGroups()[I

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUngroupFacesRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;

    move-result-object v16

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    if-eqz v17, :cond_5

    const/16 v19, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    aget v8, v17, v20

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/RecommendFace;->loadGroup(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/RecommendFace;->getGroupSimilarity(I)I

    move-result v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9, v7}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v15

    if-le v15, v10, :cond_2

    move v10, v15

    move v14, v12

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    goto :goto_1

    :cond_3
    if-le v10, v11, :cond_4

    const/16 v19, 0x157c

    move/from16 v0, v19

    if-le v10, v0, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_4

    const-string/jumbo v19, "recommended_id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "similarity"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v19, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string/jumbo v22, "group_id=? and person_id=? and recommended_id<>?"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_0

    :cond_5
    if-eqz v16, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v6, v0, [I

    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v5, v16, v20

    iget v0, v5, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    move/from16 v19, v0

    const/16 v22, 0x0

    aput v19, v6, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v19, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v6, v1, v2}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9, v7}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v15

    if-le v15, v10, :cond_6

    move v10, v15

    move v14, v12

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    goto :goto_3

    :cond_7
    iget v0, v5, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v10, v0, :cond_8

    const/16 v19, 0x157c

    move/from16 v0, v19

    if-le v10, v0, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v14, v0, :cond_8

    const-string/jumbo v19, "recommended_id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "similarity"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v19, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string/jumbo v22, "_id=? and person_id=? and recommended_id<>?"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v5, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_2

    :cond_9
    return-void
.end method
