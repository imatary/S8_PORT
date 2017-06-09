.class public Lcom/android/providers/media/FaceScanner;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/FaceScanner$FaceGroupData;,
        Lcom/android/providers/media/FaceScanner$FileInfor;,
        Lcom/android/providers/media/FaceScanner$PersonInfo;,
        Lcom/android/providers/media/FaceScanner$RecomendedPerson;,
        Lcom/android/providers/media/FaceScanner$__ompClass0;
    }
.end annotation


# static fields
.field public static final AUTO_GROUP_FACE_SIZE:I = 0x64

.field public static final MAX_KEY_FACE_COUNT:I = 0x1e

.field public static final RAW_SQL_MAIN_DB:Landroid/net/Uri;

.field public static final RAW_SQL_PERSON_DB:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "FaceScanner"

.field public static final UNKOWN_PERSON_ID:I = 0x1

.field private static mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FileInfor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categoryMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private faceScannedMediaIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/android/providers/media/ContentApp;

.field private volatile mMaxGroupId:I


# direct methods
.method static synthetic -get0()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "person"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/media/ContentApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    iget-object v0, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v0}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/FaceValue;->init(Landroid/content/Context;)V

    return-void
.end method

.method private deleteInvalidFile(I)I
    .locals 7

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/providers/media/FaceScanner;->removeFaceByFileId(Landroid/content/ContentResolver;I)V

    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string/jumbo v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getInvalidFileList(I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->isNeedToRestore()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const-string/jumbo v2, "FaceScanner"

    const-string/jumbo v3, "getInvalidFileList FINISHED_TYPE_RESTORE_MMC+"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/providers/media/FaceScanner;->restore()V

    const-string/jumbo v10, "select image_id from faces where usable=1"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->resetFileFaceInfo()V

    const-string/jumbo v2, "FaceScanner"

    const-string/jumbo v3, "getInvalidFileList FINISHED_TYPE_RESTORE_MMC-"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v10, "select _id from files where media_type=1 and face_count=-1 and _id in (select image_id from faces where usable=0 )"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_5

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_1
    const-string/jumbo v10, "select image_id from faces where usable=0 and image_id not in ( select _id from files where media_type=1 )"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_8

    :cond_9
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_2
    return-object v8

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :catch_1
    move-exception v7

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    :catch_2
    move-exception v7

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v2

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private getKeyFaceDataIndex(I[II)I
    .locals 11

    const/4 v10, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return v6

    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "select face_data from faces where person_id=%1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-lt v6, p3, :cond_2

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private getNewGroupId()I
    .locals 10

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "select max(group_id) from faces"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    add-int/lit8 v8, v8, 0x1

    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getRecomendedPerson(II)Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    .locals 12

    const/4 v11, 0x1

    new-instance v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    const/4 v9, 0x0

    invoke-direct {v6, v11, v9}, Lcom/android/providers/media/FaceScanner$RecomendedPerson;-><init>(II)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x14

    new-array v3, v9, [I

    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    array-length v10, v3

    invoke-direct {p0, v9, v3, v10}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v2

    invoke-static {p1, v3, v2, v11}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/providers/media/NativeApi;->faceGroupMatch(III)I

    move-result v7

    if-le v7, v8, :cond_1

    move v8, v7

    const/16 v9, 0x157c

    if-le v7, v9, :cond_1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    iput v7, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    :cond_1
    invoke-static {p1, v0}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private getRegisteredPersons()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v9, 0x0

    const-string/jumbo v11, "select _id from persons where _id>1"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    move-object v9, v10

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    move-object v9, v10

    goto :goto_2

    :catch_1
    move-exception v7

    move-object v9, v10

    goto :goto_1
.end method

.method private groupAndMatchFaces(I)V
    .locals 26

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "com.android.media.FACE_AUTO_GROUP_STARTED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->createGroups(I)V

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x1e

    move/from16 v0, v21

    new-array v13, v0, [I

    const/4 v12, 0x0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->getGroupCount(I)I

    move-result v8

    if-lez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    :cond_0
    if-lez v15, :cond_9

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v15, v22, v23

    const/16 v23, 0x1

    aput v8, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v15, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    array-length v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v13, v2}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v12

    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v13, v12, v1}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_1

    aget-object v21, v19, v10

    move/from16 v0, p1

    invoke-static {v0, v9, v11}, Lcom/android/providers/media/NativeApi;->groupMatchEx(III)I

    move-result v22

    aput v22, v21, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_d

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v15, :cond_4

    aget-object v21, v19, v10

    aget v21, v21, v11

    move/from16 v0, v21

    if-le v0, v14, :cond_3

    aget-object v21, v19, v10

    aget v14, v21, v11

    move/from16 v16, v10

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v6

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const/16 v21, 0x157c

    move/from16 v0, v21

    if-le v14, v0, :cond_5

    const-string/jumbo v21, "recommended_id"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v21, "similarity"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_7

    const-string/jumbo v21, "group_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_8

    move/from16 v0, p1

    invoke-static {v0, v11, v10}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v7

    if-ltz v7, :cond_6

    sget-object v21, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const-string/jumbo v22, "person_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v21, "auto_group"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v5

    :try_start_1
    const-string/jumbo v21, "FaceScanner"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "groupAndMatchFaces() - UnsupportedOperationException: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    :goto_6
    return-void

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_d

    :try_start_2
    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v6

    const/4 v7, 0x0

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_b

    const-string/jumbo v21, "group_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_8
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v6, :cond_c

    move/from16 v0, p1

    invoke-static {v0, v10, v11}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v7

    if-ltz v7, :cond_a

    sget-object v21, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    const-string/jumbo v21, "auto_group"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v21

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v24, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v25, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v23 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v22 .. v23}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    throw v21

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v24, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6
.end method

.method private isNeedToRestore()Z
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v2, "FaceScanner"

    const-string/jumbo v3, "isNeedToRestore : start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    const-string/jumbo v8, "select _id from backup"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v9

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    const-string/jumbo v8, "select _id from faces where usable = 1"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    const-string/jumbo v8, "select _id from file where reusable = 1"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    if-eqz v6, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    return v9

    :catch_1
    move-exception v7

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v2

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    if-eqz v6, :cond_b

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_b
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    return v9

    :catch_2
    move-exception v7

    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v2

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private loadFileList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FileInfor;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const-string/jumbo v13, "select _id, _data from files where media_type=1 and face_count=-1 order by scan_pri desc, date_modified desc limit 500"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v10, v9

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/providers/media/FaceScanner$FileInfor;

    invoke-direct {v9, v12, v7}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v11

    :catch_0
    move-exception v8

    :goto_1
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    move-object v9, v10

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v9, v10

    goto :goto_1
.end method

.method private loadGroupData(I)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/FaceScanner$FaceGroupData;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "select _id, face_data from faces where auto_group=2 AND group_id=0 AND person_id=1 "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string/jumbo v2, "FaceScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadGroupData() :: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_0
    if-nez v9, :cond_2

    const/16 v11, 0x12c

    div-int/lit16 v2, v6, 0x12c

    if-nez v2, :cond_1

    move v11, v6

    :cond_1
    new-instance v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/media/FaceScanner$FaceGroupData;-><init>(Lcom/android/providers/media/FaceScanner$FaceGroupData;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    new-array v3, v11, [I

    iput-object v3, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    new-array v3, v11, [I

    iput-object v3, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    const-string/jumbo v2, "FaceScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadGroupData() :: newCount ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    iget-object v2, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    iget-object v2, v2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v9

    add-int/lit8 v9, v9, 0x1

    rem-int/lit16 v2, v9, 0x12c

    if-nez v2, :cond_3

    const/4 v9, 0x0

    add-int/lit8 v10, v10, 0x1

    add-int/lit16 v6, v6, -0x12c

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v8

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private removeFaceByFileId(Landroid/content/ContentResolver;I)V
    .locals 15

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "select face_data from faces where image_id=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v9, v6, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v13, v12, 0x1

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v12

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    move v12, v13

    goto :goto_0

    :cond_0
    move v12, v13

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    if-eqz v9, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    array-length v0, v9

    if-ge v12, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v9, v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    move v12, v13

    goto :goto_4

    :catch_1
    move-exception v8

    move v12, v13

    goto :goto_3
.end method

.method private resetFileFaceInfo()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "FaceScanner"

    const-string/jumbo v4, "resetFileFaceInfo : start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "update files set face_count = -1 where _id in (select t1._id from files as t1 left outer join (select image_id, count() as count from faces where usable = 0 group by image_id) as t2 on t1._id = t2.image_id where count isnull and t1.face_count > 0 and t1.media_type=1)"

    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v3, "FaceScanner"

    const-string/jumbo v4, "resetFileFaceInfo : end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized addCategoryPeople(I)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v8}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/media/FaceValue;->isEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    :try_start_1
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz p1, :cond_2

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v9, 0x32

    if-lt v8, v9, :cond_5

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "content://media/external/file/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.dcm.action.DCM_EXECUTE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "com.samsung.dcm"

    const-string/jumbo v9, "com.samsung.dcm.framework.FrameworkService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "operation"

    const-string/jumbo v9, "update"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "origin"

    const-string/jumbo v9, "com.android.providers.media.FaceScanner"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "People"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "OSC_SCENETYPE_TO_BE_ADDED"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v8, "fields"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v8, "ids"

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v8, "data"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v8}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string/jumbo v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " new people category images are added to DCM."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->categoryMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addNotifyFaceScanProgress(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/media/FaceValue;->isEmergencyMode(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_5

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://media/external/face_scanning_progress/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.media.FACE_SCANNER_PROGRESS"

    sget-object v5, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "uris"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4, v0}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v4, "FaceScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " files has done Face Scanning."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->faceScannedMediaIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void
.end method

.method protected faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FaceScanner"

    const-string/jumbo v1, "faceGroup() is return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    array-length v0, v0

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_0

    iget-object v0, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    iget-object v1, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceDataIndexs:[I

    iget-object v2, p2, Lcom/android/providers/media/FaceScanner$FaceGroupData;->mFaceIds:[I

    array-length v2, v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/NativeApi;->prepareUngroupedData(I[I[II)V

    invoke-direct {p0, p1}, Lcom/android/providers/media/FaceScanner;->groupAndMatchFaces(I)V

    return-void
.end method

.method protected restore()V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "select A.image_id, B.[_id] from (select * from faces where usable = 1) A inner join (select * from files where reusable = 1 ) B on A.data = B._data"

    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {p0, v9, v8}, Lcom/android/providers/media/FaceScanner;->updateNewImageID(II)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected scanFile(IILjava/lang/String;)I
    .locals 22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/providers/media/NativeApi;->faceDetect(ILjava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_2

    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceLeft(II)I

    move-result v11

    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceTop(II)I

    move-result v16

    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceRight(II)I

    move-result v14

    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceBottom(II)I

    move-result v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    sub-int v15, v14, v11

    move/from16 v0, p1

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->generateFaceData(II)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v19, "image_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "person_id"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "recommended_id"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "group_id"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "pos_left"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "pos_top"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "pos_right"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "pos_bottom"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "usable"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    monitor-enter p0

    if-eqz v9, :cond_1

    :try_start_0
    sget-object v19, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v8

    const-string/jumbo v19, "face_data"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v19, 0x64

    move/from16 v0, v19

    if-lt v15, v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->getRawData(I)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/providers/media/FaceScanner;->getRecomendedPerson(II)Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    move-result-object v13

    const-string/jumbo v19, "auto_group"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "recommended_id"

    iget v0, v13, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "similarity"

    iget v0, v13, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    move/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->saveFace(II)V

    sget-object v19, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    monitor-exit p0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_1
    :try_start_1
    sget-object v19, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndexNoFeature(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v8

    const-string/jumbo v19, "face_data"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/NativeApi;->faceDetectRelease(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v19

    sget-object v20, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    const-string/jumbo v21, "true"

    invoke-virtual/range {v19 .. v21}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v19, "face_count"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "scan_pri"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return v7

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2
.end method

.method protected scanSingleFile(ILjava/lang/String;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    if-eqz v8, :cond_0

    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v0, 0x0

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-nez v8, :cond_6

    new-instance v7, Lcom/android/providers/media/FaceScanner$FileInfor;

    invoke-direct {v7, p1, p2}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V

    iput v11, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    const/4 v0, 0x1

    :goto_0
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v8, v10, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    const/16 v8, 0x190

    invoke-static {v3, v8}, Lcom/android/providers/media/NativeApi;->setFaceThumbnaislSize(II)V

    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    iget-object v9, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mData:Ljava/lang/String;

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/providers/media/FaceScanner;->scanFile(IILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseDCM()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {p0, v8}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    :cond_2
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    invoke-virtual {p0, v8}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    invoke-virtual {p0, v12}, Lcom/android/providers/media/FaceScanner;->addCategoryPeople(I)V

    invoke-virtual {p0, v12}, Lcom/android/providers/media/FaceScanner;->addNotifyFaceScanProgress(I)V

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v3, 0x0

    :cond_3
    if-eqz v0, :cond_5

    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/16 v9, 0x12c

    invoke-static {v8, v11, v9}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/media/FaceScanner;->loadGroupData(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v11, :cond_4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v2, 0x0

    :cond_5
    return-void

    :cond_6
    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/media/FaceScanner$FileInfor;

    iget v8, v5, Lcom/android/providers/media/FaceScanner$FileInfor;->mId:I

    if-ne v8, p1, :cond_7

    move-object v7, v5

    goto :goto_1

    :cond_8
    if-nez v7, :cond_9

    new-instance v7, Lcom/android/providers/media/FaceScanner$FileInfor;

    invoke-direct {v7, p1, p2}, Lcom/android/providers/media/FaceScanner$FileInfor;-><init>(ILjava/lang/String;)V

    iput v11, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    sget-object v9, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    iget v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_a

    monitor-exit v9

    return-void

    :cond_a
    const/4 v8, 0x1

    :try_start_1
    iput v8, v7, Lcom/android/providers/media/FaceScanner$FileInfor;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method protected setUnusable()V
    .locals 8

    const/4 v5, 0x1

    const-string/jumbo v3, "FaceScanner"

    const-string/jumbo v4, "setUnusable FINISHED_TYPE_REMOVE_MMC+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "usable"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    sget-object v3, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string/jumbo v4, "data LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "/storage/extSdCard%"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v3, "FaceScanner"

    const-string/jumbo v4, "setUnusable FINISHED_TYPE_REMOVE_MMC-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sleep(I)V
    .locals 4

    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sync(I)V
    .locals 12

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    if-eqz v8, :cond_0

    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x2

    if-ne p1, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/providers/media/FaceScanner;->setUnusable()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getNewGroupId()I

    move-result v8

    iput v8, p0, Lcom/android/providers/media/FaceScanner;->mMaxGroupId:I

    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->loadFileList()Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_6

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/providers/media/FaceScanner;->getInvalidFileList(I)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/providers/media/FaceScanner;->deleteInvalidFile(I)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.FACE_SCANNER_STARTED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumProcs()I

    move-result v7

    invoke-static {}, Lcom/android/providers/media/FaceValue;->getMaxThreadNum()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/providers/media/FaceValue;->getMaxThreadNum()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/javaomp/runtime/OMP;->setNumThreads(I)V

    :cond_7
    new-instance v0, Lcom/android/providers/media/FaceScanner$__ompClass0;

    invoke-direct {v0, p0}, Lcom/android/providers/media/FaceScanner$__ompClass0;-><init>(Lcom/android/providers/media/FaceScanner;)V

    const/4 v8, 0x2

    if-le v7, v8, :cond_9

    invoke-static {}, Lcom/android/providers/media/FaceValue;->IsUseOpenMP()Z

    move-result v8

    :goto_2
    invoke-static {v0, v8}, Lcom/samsung/javaomp/runtime/OMP;->__if(Lcom/samsung/javaomp/runtime/__OMPWorkItem;Z)V

    invoke-static {v0}, Lcom/samsung/javaomp/runtime/OMP;->__doParallel(Lcom/samsung/javaomp/runtime/__OMPWorkItem;)V

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    sput-object v8, Lcom/android/providers/media/FaceScanner;->mFileList:Ljava/util/ArrayList;

    :cond_8
    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.FACE_SCANNER_STOPPED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/providers/media/FaceScanner;->loadGroupData(I)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "scan groupData.size():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_c

    if-eqz v3, :cond_b

    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v3, 0x0

    :cond_b
    :goto_3
    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.FACE_SCANNER_FINISHED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v3, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    if-eqz v3, :cond_b

    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v3, 0x0

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_e

    invoke-static {v3}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v3, 0x0

    :cond_e
    sget v8, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v9, 0x1

    const/16 v10, 0x12c

    invoke-static {v8, v9, v10}, Lcom/android/providers/media/NativeApi;->createFR(III)I

    move-result v2

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_f

    const-string/jumbo v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "faceGroup() is called. groupDate["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_11

    const-string/jumbo v8, "FaceScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "group 1 ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ) break "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v2, :cond_10

    invoke-static {v2}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    const/4 v2, 0x0

    :cond_10
    sget-boolean v8, Lcom/android/providers/media/ContentApp;->mStopScan:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.media.FACE_SCANNER_STOPPED"

    sget-object v11, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_11
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/FaceScanner$FaceGroupData;

    invoke-virtual {p0, v2, v8}, Lcom/android/providers/media/FaceScanner;->faceGroup(ILcom/android/providers/media/FaceScanner$FaceGroupData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public updateNewImageID(II)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-eq p1, p2, :cond_0

    const-string/jumbo v4, "FaceScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "face restore - update oldId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "image_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v4, "usable"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "image_id = ?"

    :try_start_0
    sget-object v4, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v8
.end method
