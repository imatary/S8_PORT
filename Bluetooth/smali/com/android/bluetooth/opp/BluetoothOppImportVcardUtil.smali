.class public Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;
.super Ljava/lang/Object;
.source "BluetoothOppImportVcardUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CHARSET_EUC_KR:I = 0x1

.field private static final CHARSET_UTF_8:I = 0x0

.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "BluetoothOppImportVcardUtil"

.field private static final V:Z

.field static final VCARD_VERSION_AUTO_DETECT:I = 0x0

.field static final VCARD_VERSION_V21:I = 0x1

.field static final VCARD_VERSION_V30:I = 0x2


# instance fields
.field private Charset:Ljava/lang/String;

.field private VcardType:I

.field private VcardVersion:I

.field private ctx:Landroid/content/Context;

.field private entryCount:I

.field private fileUri:Landroid/net/Uri;

.field private mAccount:Landroid/accounts/Account;

.field private mExceptionHandling:Z

.field private mFileName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mExceptionHandling:Z

    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->D:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothOppImportVcardUtil is called. file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fileUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "BluetoothOppImportVcardUtil"

    const v2, 0x20000006

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private deleteFile()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private parserRequestData()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    if-nez v15, :cond_0

    const-string/jumbo v15, "BluetoothOppImportVcardUtil"

    const-string/jumbo v16, "parserRequestData ctx is null. something wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    return v15

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mExceptionHandling:Z

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "characterset"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    new-instance v11, Lcom/android/vcard/VCardParser_V21;

    const-string/jumbo v15, "EUC-KR"

    const/high16 v16, -0x3bf00000    # -576.0f

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v12, v11

    :goto_0
    :try_start_1
    new-instance v2, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v2}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v4}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v12, v2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    invoke-virtual {v12, v4}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    invoke-virtual {v12, v10}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v10, :cond_1

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_1
    :goto_1
    move-object v11, v12

    move-object v3, v4

    move-object v1, v2

    :goto_2
    if-eqz v13, :cond_6

    const/4 v14, 0x2

    :goto_3
    invoke-virtual {v3}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    invoke-virtual {v3}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    invoke-virtual {v1}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->entryCount:I

    const/4 v15, 0x1

    return v15

    :cond_2
    :try_start_5
    new-instance v11, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v11}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v12, v11

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v7

    :goto_4
    :try_start_6
    new-instance v15, Lcom/android/vcard/exception/VCardException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unexpected exception has occrrued check vCard format or BASE64 Encoding #1: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v15

    move-object v11, v12

    :goto_5
    if-eqz v10, :cond_3

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_6
    :try_start_8
    throw v15
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v5

    :goto_7
    const-string/jumbo v15, "BluetoothOppImportVcardUtil"

    const-string/jumbo v16, "Nested Exception is found (it may be false-positive)."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v8

    :goto_8
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    const/4 v13, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mExceptionHandling:Z

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "characterset"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    new-instance v11, Lcom/android/vcard/VCardParser_V30;

    const-string/jumbo v15, "EUC-KR"

    const/high16 v16, -0x3bf00000    # -576.0f

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_a
    :try_start_b
    new-instance v2, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v2}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    new-instance v4, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v4}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_c
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v11, v2}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    invoke-virtual {v11, v4}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    invoke-virtual {v11, v10}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_d
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v10, :cond_4

    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_e .. :try_end_e} :catch_9

    :cond_4
    :goto_b
    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_2

    :catch_4
    move-exception v6

    goto :goto_9

    :cond_5
    :try_start_f
    new-instance v11, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v11}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_a

    :catch_5
    move-exception v7

    :goto_c
    :try_start_10
    new-instance v15, Lcom/android/vcard/exception/VCardException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unexpected exception has occrrued check vCard format or BASE64 Encoding #2: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v15

    :catchall_1
    move-exception v15

    goto/16 :goto_5

    :catch_6
    move-exception v9

    :goto_d
    new-instance v15, Lcom/android/vcard/exception/VCardException;

    const-string/jumbo v16, "vCard with unspported version."

    invoke-direct/range {v15 .. v16}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catch_7
    move-exception v6

    goto :goto_b

    :catch_8
    move-exception v6

    goto/16 :goto_6

    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_3

    :catch_9
    move-exception v5

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_7

    :catchall_2
    move-exception v15

    move-object v11, v12

    move-object v1, v2

    goto/16 :goto_5

    :catchall_3
    move-exception v15

    move-object v11, v12

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_5

    :catchall_4
    move-exception v15

    move-object v1, v2

    goto/16 :goto_5

    :catchall_5
    move-exception v15

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_5

    :catch_a
    move-exception v9

    move-object v1, v2

    goto :goto_d

    :catch_b
    move-exception v9

    move-object v3, v4

    move-object v1, v2

    goto :goto_d

    :catch_c
    move-exception v7

    move-object v1, v2

    goto :goto_c

    :catch_d
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto :goto_c

    :catch_e
    move-exception v8

    move-object v1, v2

    goto/16 :goto_8

    :catch_f
    move-exception v8

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_8

    :catch_10
    move-exception v7

    move-object v1, v2

    goto/16 :goto_4

    :catch_11
    move-exception v7

    move-object v3, v4

    move-object v1, v2

    goto/16 :goto_4
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 16

    const/4 v11, 0x0

    move-object/from16 v0, p5

    array-length v9, v0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget v12, p5, v8

    if-lez v8, :cond_0

    :try_start_0
    move-object/from16 v0, p4

    instance-of v13, v0, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v13, :cond_0

    move-object/from16 v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mExceptionHandling:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "characterset"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const-string/jumbo p3, "EUC-KR"

    :cond_1
    if-eqz p3, :cond_4

    const-string/jumbo v13, "EUC-KR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    new-instance v10, Lcom/android/vcard/VCardParser_V30;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit p0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v11, 0x1

    if-eqz p1, :cond_2

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    return v11

    :cond_3
    :try_start_4
    new-instance v10, Lcom/android/vcard/VCardParser_V21;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    new-instance v10, Lcom/android/vcard/VCardParser_V30;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    goto :goto_1

    :cond_5
    new-instance v10, Lcom/android/vcard/VCardParser_V21;

    move/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    :try_start_5
    monitor-exit p0

    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v6

    :try_start_6
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "IOException was emitted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz p1, :cond_6

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v7

    :try_start_8
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unexpected exception has occrrued check vCard format or BASE64 Encoding : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz p1, :cond_6

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v2

    :try_start_a
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    invoke-virtual {v2}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz p1, :cond_6

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3

    :catch_5
    move-exception v6

    goto :goto_3

    :catch_6
    move-exception v5

    add-int/lit8 v13, v9, -0x1

    if-ne v8, v13, :cond_7

    :try_start_c
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    const-string/jumbo v14, "Appropriate version for this vCard is not found."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    if-eqz p1, :cond_6

    :try_start_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_3

    :catch_7
    move-exception v6

    goto :goto_3

    :catch_8
    move-exception v4

    :try_start_e
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    invoke-virtual {v4}, Lcom/android/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz p1, :cond_6

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_3

    :catch_9
    move-exception v6

    goto :goto_3

    :catch_a
    move-exception v3

    :try_start_10
    const-string/jumbo v13, "BluetoothOppImportVcardUtil"

    const-string/jumbo v14, "Nested Exception is found."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz p1, :cond_6

    :try_start_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_3

    :catch_b
    move-exception v6

    goto :goto_3

    :catch_c
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v13

    if-eqz p1, :cond_8

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_8
    :goto_4
    throw v13

    :catch_d
    move-exception v6

    goto :goto_4
.end method

.method private runInternal()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v0, "BluetoothOppImportVcardUtil"

    const-string/jumbo v2, "runInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    if-nez v0, :cond_4

    const/4 v0, 0x2

    filled-new-array {v11, v0}, [I

    move-result-object v5

    :goto_0
    new-instance v4, Lcom/android/vcard/VCardEntryConstructor;

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    new-instance v6, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v0}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v6}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->D:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start importing one vCard (Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    if-eqz v9, :cond_6

    return v11

    :cond_4
    new-array v5, v11, [I

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    aput v0, v5, v10

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v7

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_2
    throw v0

    :catch_3
    move-exception v8

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "BluetoothOppImportVcardUtil"

    const-string/jumbo v2, "Failed to read one vCard file"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->D:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vCard file uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v10
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothOppImportVcardUtil"

    const-string/jumbo v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    if-nez v3, :cond_0

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "parseDisplayName ctx is null. something wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->parserRequestData()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "parserRequestData is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->runInternal()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "runInternal is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "Finished caching vCard."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    invoke-virtual {v0}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "Finished caching vCard."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->deleteFile()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :catch_2
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "Exception during caching vCard"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "Finished caching vCard."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :catchall_0
    move-exception v3

    const-string/jumbo v4, "BluetoothOppImportVcardUtil"

    const-string/jumbo v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    :cond_3
    const-string/jumbo v3, "BluetoothOppImportVcardUtil"

    const-string/jumbo v4, "import Success(StartVcardImport)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
