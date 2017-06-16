.class public abstract Lcom/android/bluetooth/map/BluetoothMapbMessage;
.super Ljava/lang/Object;
.source "BluetoothMapbMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;,
        Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

.field protected static final D:Z

.field public static INVALID_VALUE:I

.field protected static TAG:Ljava/lang/String;

.field protected static final V:Z


# instance fields
.field protected mAppParamCharset:I

.field private mBMsgLength:I

.field protected mCharset:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;

.field private mFolder:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOriginator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mPartId:J

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;

.field protected mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

.field private mVersionString:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->values()[Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->NONE:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_CHAT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->RCS_FT:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-com-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "BluetoothMapbMessage"

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->V:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "VERSION:1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    sget v0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Ljava/io/InputStream;I)Lcom/android/bluetooth/map/BluetoothMapbMessage;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string/jumbo v11, ""

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    sget-boolean v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v22, :cond_6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    new-instance v4, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/bluetooth/log/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v8, Ljava/io/File;

    const-string/jumbo v22, "receivedBMessage.txt"

    move-object/from16 v0, v22

    invoke-direct {v8, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v14, v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v22, 0x1000

    :try_start_1
    move/from16 v0, v22

    new-array v3, v0, [B

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int v21, v21, v10

    goto :goto_0

    :cond_0
    if-eqz v14, :cond_1

    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v13, v14

    :cond_2
    :goto_2
    if-eqz v7, :cond_5

    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    :goto_3
    :try_start_3
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Failed to copy the received message"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v21, :cond_3

    const/4 v7, 0x1

    :cond_3
    if-eqz v13, :cond_2

    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v5

    :goto_4
    :try_start_5
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Unable to create output stream"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_2

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v6

    goto :goto_2

    :catchall_0
    move-exception v22

    :goto_5
    if-eqz v13, :cond_4

    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_6
    throw v22

    :catch_5
    move-exception v6

    goto :goto_6

    :cond_5
    if-nez v13, :cond_8

    :goto_7
    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "The incoming bMessage have been dumped to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v22, "BEGIN:BMSG"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    const-string/jumbo v22, "VERSION"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->expect(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    :goto_8
    const-string/jumbo v22, "BEGIN:VCARD"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string/jumbo v22, "BEGIN:BENV"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    :cond_7
    if-nez v12, :cond_14

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Missing bMessage TYPE: - unable to parse body-content"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_8
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    new-instance p0, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_7

    :catch_6
    move-exception v6

    goto :goto_9

    :catch_7
    move-exception v5

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Failed to open the bMessage file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    :cond_9
    const-string/jumbo v22, "STATUS"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "READ"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v17, 0x1

    :cond_a
    :goto_a
    const-string/jumbo v22, "EXTENDEDDATA"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_b

    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "We got extended data with: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string/jumbo v22, "TYPE"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_11

    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v22, "SMS_CMDA"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const-string/jumbo v20, "SMS_CDMA"

    :cond_c
    invoke-static/range {v20 .. v20}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->valueOf(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v19

    if-nez p1, :cond_10

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_10

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_10

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v23, "Native appParamsCharset only supported for SMS"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_d
    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "UNREAD"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_e
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Wrong value in \'STATUS\': "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v2, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_f
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing value for \'STATUS\': "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_10
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->-getcom-android-bluetooth-map-BluetoothMapUtils$TYPESwitchesValues()[I

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    :cond_11
    :goto_b
    const-string/jumbo v22, "FOLDER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_12

    const-string/jumbo v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    const/16 v22, 0x1

    aget-object v22, v2, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :cond_12
    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :pswitch_0
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    goto :goto_b

    :pswitch_1
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    goto :goto_b

    :pswitch_2
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    goto :goto_b

    :pswitch_3
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    goto :goto_b

    :cond_13
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing value for \'TYPE\':"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_14
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    move/from16 v0, p1

    iput v0, v12, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mAppParamCharset:I

    if-eqz v9, :cond_15

    invoke-virtual {v12, v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setCompleteFolder(Ljava/lang/String;)V

    :cond_15
    if-eqz v18, :cond_16

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->setStatus(Z)V

    :cond_16
    :goto_c
    const-string/jumbo v22, "BEGIN:VCARD"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_18

    sget-boolean v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v22, :cond_17

    sget-object v22, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Decoding vCard"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V

    invoke-virtual {v15}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    :cond_18
    const-string/jumbo v22, "BEGIN:BENV"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_19

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v12, v15, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :goto_d
    return-object v12

    :cond_19
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Bmessage has no BEGIN:BENV - line:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :catch_8
    move-exception v6

    goto :goto_d

    :catchall_1
    move-exception v22

    move-object v13, v14

    goto/16 :goto_5

    :catch_9
    move-exception v5

    move-object v13, v14

    goto/16 :goto_4

    :catch_a
    move-exception v6

    move-object v13, v14

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string/jumbo v10, "END:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "PARTID:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mPartId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wrong value in \'PARTID\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing value for \'PARTID\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    const-string/jumbo v10, "ENCODING:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing value for \'ENCODING\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    const-string/jumbo v10, "CHARSET:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing value for \'CHARSET\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    const-string/jumbo v10, "LANGUAGE:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mLanguage:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing value for \'LANGUAGE\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    const-string/jumbo v10, "LENGTH:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :try_start_1
    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wrong value in \'LENGTH\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_9
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Missing value for \'LENGTH\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_a
    const-string/jumbo v10, "BEGIN:MSG"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    sget v11, Lcom/android/bluetooth/map/BluetoothMapbMessage;->INVALID_VALUE:I

    if-ne v10, v11, :cond_b

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Missing value for \'LENGTH\'. Unable to read remaining part of the message"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b
    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {p1, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getDataBytes(I)[B

    move-result-object v8

    const/4 v9, -0x1

    :try_start_2
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v1, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v10, "END:MSG"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_c

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_c
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v10, :cond_d

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MsgLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mBMsgLength:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "\\n"

    const-string/jumbo v11, "<LF>\n"

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "\\r"

    const-string/jumbo v11, "<CR>"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "\\n"

    const-string/jumbo v11, "<LF>\n"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "\\r"

    const-string/jumbo v11, "<CR>"

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "The msgString: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_d
    const-string/jumbo v10, "\r\nEND:MSG\r\n"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgInit()V

    const/4 v5, 0x0

    :goto_2
    array-length v10, v7

    if-ge v5, v10, :cond_0

    aget-object v10, v7, v5

    const-string/jumbo v11, "^BEGIN:MSG\r\n"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v5

    aget-object v10, v7, v5

    const-string/jumbo v11, "\r\n([/]*)/END\\:MSG"

    const-string/jumbo v12, "\r\n$1END:MSG"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v5

    aget-object v10, v7, v5

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v5

    aget-object v10, v7, v5

    invoke-virtual {p0, v10}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseMsgPart(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_2
    move-exception v3

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Unable to convert to UTF-8"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_e
    return-void
.end method

.method private parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoding envelope level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoding recipient vCard level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->parseVcard(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getLineEnforce()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "BEGIN:BENV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Decoding nested envelope"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseEnvelope(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;I)V

    :cond_5
    const-string/jumbo v1, "BEGIN:BBODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Decoding bbody"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v2, :cond_8

    const-string/jumbo v1, "END:BBODY"

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;->getStringTerminator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBodyEmail(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->parseBody(Lcom/android/bluetooth/map/BluetoothMapbMessage$BMsgReader;)V

    goto :goto_1
.end method


# virtual methods
.method public addOriginator(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOriginator(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOriginator([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecipient(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecipient([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected decodeBinary(Ljava/lang/String;)[B
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v3, v4

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapbMessage;->D:Z

    if-eqz v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    array-length v3, v4

    :goto_1
    if-ge v0, v3, :cond_1

    const-string/jumbo v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-byte v9, v4, v0

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public abstract encode()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected encodeBinary([B[B)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-byte v2, p2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p2, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeGeneric(Ljava/util/ArrayList;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x100

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "BEGIN:BMSG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "STATUS:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "TYPE:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x200

    if-le v10, v11, :cond_1

    const-string/jumbo v10, "FOLDER:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit16 v12, v12, -0x200

    iget-object v13, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    const-string/jumbo v11, "1.0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "EXTENDEDDATA:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "FOLDER:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v10, "BEGIN:BENV"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;->encode(Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v10, "BEGIN:BBODY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    :goto_4
    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v10, v3

    add-int/lit8 v10, v10, 0x16

    add-int/2addr v5, v10

    goto :goto_5

    :cond_6
    const-string/jumbo v10, "ENCODING:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "CHARSET:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mCharset:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const-string/jumbo v10, "LENGTH:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x1f

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v10, "END:BBODY"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "END:BENV"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "END:BMSG"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    array-length v10, v7

    array-length v11, v6

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const-string/jumbo v10, "BEGIN:MSG\r\n"

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string/jumbo v10, "\r\nEND:MSG\r\n"

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    sget-object v10, Lcom/android/bluetooth/map/BluetoothMapbMessage;->TAG:Ljava/lang/String;

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    return-object v10

    :cond_9
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    return-object v10
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mOriginator:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    return-object v0
.end method

.method public parseBodyEmail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract parseMsgInit()V
.end method

.method public abstract parseMsgPart(Ljava/lang/String;)V
.end method

.method public setCompleteFolder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "telecom/msg/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mFolder:Ljava/lang/String;

    return-void
.end method

.method public setRecipient(Lcom/android/bluetooth/map/BluetoothMapbMessage$vCard;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mRecipient:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "READ"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "UNREAD"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    return-void
.end method

.method public setVersionString(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VERSION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessage;->mVersionString:Ljava/lang/String;

    return-void
.end method
