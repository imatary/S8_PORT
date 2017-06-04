.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;
.super Ljava/lang/Object;
.source "VcardManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDestVcardPath(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    const-string/jumbo v8, ""

    const-string/jumbo v7, ""

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v0, "_display_name"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDestVcardPath : filename is null, default name added, uri =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "Contacts.vcf"

    :cond_1
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDestVcardPath : filename = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ".vcf"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "getDestVcardPathendsWith .vcf"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "[\\\\/:?<>#|]"

    const-string/jumbo v1, "_"

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v8, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getDestVcardPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[\\\\/:?<>#|]"

    const-string/jumbo v3, "_"

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    rem-long/2addr v4, v10

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public createVcard(Ljava/util/ArrayList;)Ljava/io/File;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->getDestVcardPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "Failed to create vcard file!!"

    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v19, 0x0

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move-object/from16 v21, v19

    move-object/from16 v19, v20

    :goto_2
    return-object v21

    :catch_0
    move-exception v6

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardIOException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_4
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "Outstream is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "createVcardException: OutStream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const/16 v18, 0x0

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x1

    :cond_4
    if-eqz v16, :cond_f

    move-object/from16 v18, v12

    const/4 v10, 0x0

    const/4 v8, 0x0

    :goto_4
    const/16 v22, 0x3e8

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    const-string/jumbo v22, "%3A"

    add-int/lit8 v23, v10, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_8

    :cond_5
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_9

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "content://com.android.contacts/contacts/as_multi_vcard/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v10, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v22, 0x0

    add-int/lit8 v23, v10, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x1

    :goto_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-nez v9, :cond_b

    const-string/jumbo v21, "createVcard : fail to create [inStream is null]"

    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v19, 0x0

    if-eqz v9, :cond_7

    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_6
    if-eqz v14, :cond_a

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_7
    move-object v13, v14

    move-object/from16 v21, v19

    move-object/from16 v19, v20

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_9
    const/16 v16, 0x0

    goto :goto_5

    :catch_2
    move-exception v6

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardIOException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    :try_start_9
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "Outstream is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    :catch_3
    move-exception v7

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "createVcardException: OutStream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :try_start_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "fileName = [ "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_4

    const/16 v22, 0x200

    move/from16 v0, v22

    new-array v3, v0, [B

    const/4 v15, 0x0

    :cond_c
    :goto_8
    const/16 v22, -0x1

    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v15

    move/from16 v0, v22

    if-eq v0, v15, :cond_4

    if-lez v15, :cond_c

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v3, v0, v15}, Ljava/io/FileOutputStream;->write([BII)V

    const-string/jumbo v22, "writing..."

    sget-object v23, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catch_4
    move-exception v5

    move-object/from16 v19, v20

    move-object v13, v14

    :goto_9
    :try_start_b
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardException "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v9, :cond_d

    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_d
    :goto_a
    if-eqz v13, :cond_15

    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :goto_b
    if-eqz v19, :cond_e

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_e

    const/16 v19, 0x0

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardfail to create"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v21, v19

    goto/16 :goto_2

    :cond_f
    if-eqz v9, :cond_10

    :try_start_e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_10
    :goto_c
    if-eqz v14, :cond_3

    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_3

    :catch_5
    move-exception v11

    :try_start_10
    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "OutputStream closeIOException"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v11, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v21

    move-object/from16 v19, v20

    move-object v13, v14

    :goto_d
    if-eqz v9, :cond_11

    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    :cond_11
    :goto_e
    if-eqz v13, :cond_16

    :try_start_12
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :goto_f
    throw v21

    :catch_6
    move-exception v6

    :try_start_13
    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "createVcardIOException"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_c

    :cond_12
    if-eqz v9, :cond_13

    :try_start_14
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    :cond_13
    :goto_10
    if-eqz v14, :cond_14

    :try_start_15
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    :goto_11
    move-object/from16 v19, v20

    move-object v13, v14

    goto :goto_b

    :catch_7
    move-exception v6

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardIOException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_10

    :cond_14
    :try_start_16
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "Outstream is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_11

    :catch_8
    move-exception v7

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "createVcardException: OutStream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v20

    move-object v13, v14

    goto/16 :goto_b

    :catch_9
    move-exception v6

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "createVcardIOException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_15
    :try_start_17
    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "Outstream is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_b

    :catch_a
    move-exception v7

    sget-object v21, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "createVcardException: OutStream"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_b
    move-exception v6

    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "createVcardIOException"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_16
    :try_start_18
    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Outstream is null"

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    goto/16 :goto_f

    :catch_c
    move-exception v7

    sget-object v22, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/VcardManager;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "createVcardException: OutStream"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :catchall_1
    move-exception v21

    goto/16 :goto_d

    :catchall_2
    move-exception v21

    move-object/from16 v19, v20

    goto/16 :goto_d

    :catch_d
    move-exception v5

    goto/16 :goto_9

    :catch_e
    move-exception v5

    move-object/from16 v19, v20

    goto/16 :goto_9
.end method
