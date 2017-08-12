.class public Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;
.super Ljava/lang/Object;
.source "BluetoothDownloadableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DOWNLOADABLE_DB_A2DP_UPDATE_INTENT:Ljava/lang/String; = "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_A2DP_UPDATE_INTENT"

.field public static final DOWNLOADABLE_DB_BLE_UPDATE_INTENT:Ljava/lang/String; = "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_BLE_UPDATE_INTENT"

.field public static final DOWNLOADABLE_DB_HFP_UPDATE_INTENT:Ljava/lang/String; = "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_HFP_UPDATE_INTENT"

.field public static final ERROR_INT:I = -0x1

.field public static final KEY_ALLOWED_SCO_SNIFF_MODE:Ljava/lang/String; = "AllowedScoSniffMode"

.field public static final KEY_AVOID_ALERTING_CARKIT:Ljava/lang/String; = "AvoidAlertingCarkit"

.field public static final KEY_AVOID_IN_BAND_RINGTONE:Ljava/lang/String; = "AvoidInBandRingtone"

.field public static final KEY_AVRC_ABS_VOL_BLACKLIST:Ljava/lang/String; = "AvrcAbsVolBlacklist"

.field public static final KEY_AVRC_PROCESS_AVRC_KEY_BLACKLIST:Ljava/lang/String; = "ProcessAvrcKey"

.field public static final KEY_AVRC_WAIT_BEFORE_CIEV:Ljava/lang/String; = "WaitBeforeCiev"

.field public static final KEY_BLE_ABUSE_SCAN:Ljava/lang/String; = "BLE Abuse Scan"

.field public static final KEY_BLE_ABUSE_SCAN_LIST:Ljava/lang/String; = "BLE Abuse Scan List"

.field public static final KEY_BLE_CI_BLACKLIST:Ljava/lang/String; = "BLE CI BlackList"

.field public static final KEY_BLE_SC_BLACKLIST:Ljava/lang/String; = "BLE SC BlackList"

.field public static final KEY_EXCEPT_SLC_TIMEOUT:Ljava/lang/String; = "ExceptSLCTimeout"

.field public static final KEY_FEATURE_CHECKER:Ljava/lang/String; = "FeatureChecker"

.field public static final KEY_FILE_POLICY_NAME_A2DP:Ljava/lang/String; = "FILE_A2DP"

.field public static final KEY_FILE_POLICY_NAME_BLE:Ljava/lang/String; = "FILE_BLE"

.field public static final KEY_FILE_POLICY_NAME_HFP:Ljava/lang/String; = "FILE_HFP"

.field public static final KEY_NOT_ALLOWED_VOICE_RECOGNITION:Ljava/lang/String; = "NotAllowedVoiceRecognition"

.field private static final LOCAL_DOWNLOADABLE_DB_FILE_PATH:Ljava/lang/String; = "/data/misc/bluedroid/downloadable_bt_temp.db"

.field private static final LOCAL_IOP_FILE_PATH:Ljava/lang/String; = "/etc/bluetooth/iop_bt.db"

.field private static final MESSAGE_DELAYED_INIT:I = 0x1

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final SCPM_BROADCAST_MESSAGE_A2DP:Ljava/lang/String; = "sec.app.policy.UPDATE.BT_A2DP"

.field public static final SCPM_BROADCAST_MESSAGE_BLE:Ljava/lang/String; = "sec.app.policy.UPDATE.BT_BLE"

.field public static final SCPM_BROADCAST_MESSAGE_HFP:Ljava/lang/String; = "sec.app.policy.UPDATE.BT_HFP"

.field private static final SCPM_KEY_POLICY_CATEGORY:Ljava/lang/String; = "category"

.field private static final SCPM_KEY_POLICY_DATA1:Ljava/lang/String; = "data1"

.field private static final SCPM_KEY_POLICY_DATA2:Ljava/lang/String; = "data2"

.field private static final SCPM_KEY_POLICY_DATA3:Ljava/lang/String; = "data3"

.field private static final SCPM_KEY_POLICY_DATA4:Ljava/lang/String; = "data4"

.field private static final SCPM_KEY_POLICY_DATA5:Ljava/lang/String; = "data5"

.field private static final SCPM_KEY_POLICY_ITEM:Ljava/lang/String; = "item"

.field private static final SCPM_KEY_POLICY_NAME:Ljava/lang/String; = "policyName"

.field private static final SCPM_KEY_POLICY_VERSION:Ljava/lang/String; = "policyVersion"

.field private static final SCPM_POLICY_NAME_A2DP_TABLE:Ljava/lang/String; = "BT_A2DP"

.field private static final SCPM_POLICY_NAME_BLE_TABLE:Ljava/lang/String; = "BT_BLE"

.field private static final SCPM_POLICY_NAME_HFP_TABLE:Ljava/lang/String; = "BT_HFP"

.field private static final SCPM_URI_POLICY_ITEM_A2DP:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/BT_A2DP"

.field private static final SCPM_URI_POLICY_ITEM_BLE:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/BT_BLE"

.field private static final SCPM_URI_POLICY_ITEM_HFP:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/BT_HFP"

.field private static final SCPM_URI_POLICY_LIST:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/policy_list"

.field private static TAG:Ljava/lang/String;

.field private static fileObserverCounter:I


# instance fields
.field private dbError:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mDbA2dpVersion:J

.field private mDbBleVersion:J

.field private mDbHfpVersion:J

.field private mDdbInitialized:Z

.field private mInitFailed:Z

.field private mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

.field private mRetryCount:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->fileObserverCounter:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDdbInitialized:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updateFilePolicyVersions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "DOWNLOADABLE_DB"

    sput-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->dbError:Z

    iput-boolean v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDdbInitialized:Z

    iput v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    iput-boolean v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    iput-wide v4, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbHfpVersion:J

    iput-wide v4, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbBleVersion:J

    iput-wide v4, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbA2dpVersion:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "BluetoothDownloadableDatabaseInit"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;-><init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    return-void
.end method

.method private appendRecordsToFile(Ljava/io/File;)V
    .locals 25

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "appending records to file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    :try_start_0
    new-instance v21, Ljava/io/FileWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v9, Ljava/io/BufferedWriter;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v22, "AllowedScoSniffMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    const-string/jumbo v22, "NotAllowedVoiceRecognition"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    const-string/jumbo v22, "AvoidInBandRingtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v22, "AvoidAlertingCarkit"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v22, "ExceptSLCTimeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v22, "BLE CI BlackList"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getBLErecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string/jumbo v22, "BLE SC BlackList"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getBLErecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    const-string/jumbo v22, "ProcessAvrcKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2DPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v22, "WaitBeforeCiev"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2DPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string/jumbo v22, "AvrcAbsVolBlacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2DPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v22, "FeatureChecker"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2DPrecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v14}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v13

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "error writing to file "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Deleting file is successful"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Successfully added the records to downlodable_db"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileWriter;->close()V

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "writer close"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :catch_1
    move-exception v13

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "ERROR getting writer "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "Deleting file is successful"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_2
    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "error deleting file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v23, "error deleting file"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v13

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "error closing buffred writer "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updateFilePolicyVersions()V

    goto :goto_2

    :catch_3
    move-exception v13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updateFilePolicyVersions()V

    sget-object v22, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "error closing file writer"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private clearRecords(Ljava/lang/String;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "BT_HFP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "BT_BLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in deleting in the database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v1, "BT_A2DP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->A2DP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getA2DPrecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    const/4 v8, 0x0

    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->A2DP_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const-string/jumbo v0, "ProcessAvrcKey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v8, "\n/* Avrc key */"

    const-string/jumbo v0, "ProcessAvrcKey"

    invoke-direct {p0, v7, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2dpBlacklistRecordsForAddr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3
    const-string/jumbo v0, "WaitBeforeCiev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v8, "\n/* Avrc Wait Before Ciev */"

    const-string/jumbo v0, "WaitBeforeCiev"

    invoke-direct {p0, v7, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2dpBlacklistRecordsForAddr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AvrcAbsVolBlacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v8, "\n/* Avrc Abs Vol */"

    const-string/jumbo v0, "AvrcAbsVolBlacklist"

    invoke-direct {p0, v7, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2dpBlacklistRecordsForAddr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "FeatureChecker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v8, "\n/* Feature checker */"

    const-string/jumbo v0, "FeatureChecker"

    invoke-direct {p0, v7, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getA2dpBlacklistRecordsForString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0
.end method

.method private getA2dpBlacklistRecordsForAddr(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\nDownloadable_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KEY_BDADDR=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getA2dpBlacklistRecordsForString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "hope.park getA2dpBlacklistRecordsForString"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\nDownloadable_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " KEY_NAME=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getAllowedScoSniffRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v6, "\nDownloadable_AllowedScoSniffMode KEY_DID_VND_ID=\""

    const-string/jumbo v1, "\" KEY_START_PROD_ID=\""

    const-string/jumbo v0, "\" KEY_END_PROD_ID=\""

    const-string/jumbo v8, "\""

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_1
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    :cond_5
    return-object v7
.end method

.method private getAvoidAlertingCarkitRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "\nDownloadable_AvoidAlertingCarkit KEY_BDADDR=\""

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getAvoidInBandRingtoneRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "\nDownloadable_AvoidInBandRingtone KEY_BDADDR=\""

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getBLErecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    const/4 v8, 0x0

    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const-string/jumbo v0, "BLE CI BlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v8, "\n/* BLE CI Blacklist */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getCIblacklistRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3
    const-string/jumbo v0, "BLE SC BlackList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v8, "\n/* BLE SC Blacklist */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getSCblacklistRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0
.end method

.method private getCIblacklistRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "\nDownloadable_BleCIBlackList KEY_BDADDR=\""

    const-string/jumbo v0, ":*\" KEY_NAME=\""

    const-string/jumbo v6, "\""

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_4
    return-object v5
.end method

.method private getDbError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->dbError:Z

    return v0
.end method

.method private getExceptSlcTimeoutRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "\nDownloadable_ExceptSLCTimeout KEY_BDADDR=\""

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getHFPrecords(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    const/4 v8, 0x0

    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const-string/jumbo v0, "AllowedScoSniffMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v8, "\n/* Allowed ScoSniff Mode */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAllowedScoSniffRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3
    const-string/jumbo v0, "NotAllowedVoiceRecognition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v8, "\n/* Not Allowed Voice Recognition */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getNotAllowedVoiceRecognitionRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AvoidInBandRingtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v8, "\n/* Avoid InBand Ringtone */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAvoidInBandRingtoneRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "AvoidAlertingCarkit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v8, "\n/* AvoidAlertingCarkit */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAvoidAlertingCarkitRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "ExceptSLCTimeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v8, "\n/* Except Slc Timeout */"

    invoke-direct {p0, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getExceptSlcTimeoutRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0
.end method

.method public static getLongFromString(Ljava/lang/String;J)J
    .locals 5

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide p1
.end method

.method private getNotAllowedVoiceRecognitionRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "\nDownloadable_NotAllowedVoiceRecognition KEY_BDADDR=\""

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private getSCblacklistRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "\nDownloadable_BleSCBlackList KEY_BDADDR=\""

    const-string/jumbo v0, ":*\" KEY_NAME=\""

    const-string/jumbo v6, "\""

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_4
    return-object v5
.end method

.method private getScoDealyInfoRecords(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "\nDownloadable_ScoDelayInfo KEY_BDADDR=\""

    const-string/jumbo v7, ":*\""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_7
    return-object v6
.end method

.method private insertDataToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_1

    const-string/jumbo v2, "downloadable_item"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v2, "downloadable_category"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo v2, "downloadable_data1"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    const-string/jumbo v2, "downloadable_data2"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p6, :cond_5

    const-string/jumbo v2, "downloadable_data3"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p7, :cond_6

    const-string/jumbo v2, "downloadable_data4"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz p8, :cond_7

    const-string/jumbo v2, "downloadable_data5"

    invoke-virtual {v1, v2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :try_start_0
    const-string/jumbo v2, "BT_HFP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    return-void

    :cond_8
    const-string/jumbo v2, "BT_BLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in inserting in the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :cond_9
    :try_start_1
    const-string/jumbo v2, "BT_A2DP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->A2DP_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_a
    return-void
.end method

.method private isLocalDbValuePresent()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbHfpVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbBleVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbA2dpVersion:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private msg2Log(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg2Log: no such action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "unKnown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "MESSAGE_DELAYED_INIT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setDbError()V
    .locals 2

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDbError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->dbError:Z

    return-void
.end method

.method private updateFilePolicyVersions()V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Updating file policy versions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "policyName = ?"

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "policyVersion"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BT_HFP"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v8, :cond_3

    const-string/jumbo v0, "policyVersion"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "FILE_HFP"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    const/4 v8, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "policyVersion"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BT_BLE"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v8, :cond_6

    const-string/jumbo v0, "policyVersion"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "FILE_BLE"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    const/4 v8, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "policyVersion"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BT_A2DP"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v8, :cond_9

    const-string/jumbo v0, "policyVersion"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "FILE_A2DP"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_9
    return-void

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in updating in the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_2
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in updating the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_4
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_5
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in updating the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void
.end method

.method private updatePolicyItems(Ljava/lang/String;)V
    .locals 14

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " needs update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SCPM client doesn\'t exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->clearRecords(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v12, 0x0

    const-string/jumbo v0, "BT_HFP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/BT_HFP"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "item"

    const/4 v13, 0x0

    aput-object v3, v2, v13

    const-string/jumbo v3, "category"

    const/4 v13, 0x1

    aput-object v3, v2, v13

    const-string/jumbo v3, "data1"

    const/4 v13, 0x2

    aput-object v3, v2, v13

    const-string/jumbo v3, "data2"

    const/4 v13, 0x3

    aput-object v3, v2, v13

    const-string/jumbo v3, "data3"

    const/4 v13, 0x4

    aput-object v3, v2, v13

    const-string/jumbo v3, "data4"

    const/4 v13, 0x5

    aput-object v3, v2, v13

    const-string/jumbo v3, "data5"

    const/4 v13, 0x6

    aput-object v3, v2, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->insertDataToTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " latest polices have been updated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v0, "BT_BLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/BT_BLE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "BT_A2DP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/BT_A2DP"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    return-void

    :catch_0
    move-exception v11

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in querying the database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1
.end method

.method private updatePolicyVersion(Ljava/lang/String;J)V
    .locals 8

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update policy version for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "policyName = ? "

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "policyVersion"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v3, "BT_HFP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "BT_HFP"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->writePolicyItemsToFile()V

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v3, "BT_BLE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "BT_BLE"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in updating in the database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo v3, "BT_A2DP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "BT_A2DP"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private verifyPolicyVersion(Ljava/lang/String;Ljava/lang/String;)J
    .locals 20

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "verifyPolicyVersion"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v4, :cond_0

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SCPM Table does not contain policy version"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "SCPM client doesn\'t exist"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_2
    const/16 v16, 0x0

    const-string/jumbo v4, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v7, "policyName = ? "

    const/4 v13, 0x0

    :try_start_0
    const-string/jumbo v4, "BT_HFP"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "policyVersion"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "BT_HFP"

    const/16 v17, 0x0

    aput-object v9, v8, v17

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_0
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v10

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Local DB version is = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " SCPM Client DB version is= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v18

    cmp-long v4, v8, v18

    if-lez v4, :cond_8

    const-wide/16 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v8

    return-wide v8

    :cond_5
    :try_start_1
    const-string/jumbo v4, "BT_BLE"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "policyVersion"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "BT_BLE"

    const/16 v17, 0x0

    aput-object v9, v8, v17

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "BT_A2DP"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "policyVersion"

    const/4 v9, 0x0

    aput-object v8, v6, v9

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "BT_A2DP"

    const/16 v17, 0x0

    aput-object v9, v8, v17

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Tables do not exist in SCPM"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v8, 0x0

    return-wide v8

    :catch_0
    move-exception v12

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception in querying the database: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_8
    const-wide/16 v8, 0x0

    return-wide v8
.end method

.method private writePolicyItemsToFile()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$2;

    const-string/jumbo v3, "/data/misc/bluedroid/downloadable_bt_temp.db"

    const/16 v4, 0xfff

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$2;-><init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;Ljava/lang/String;I)V

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/data/misc/bluedroid/downloadable_bt_temp.db"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "file cretaed downloadable.db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->appendRecordsToFile(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR CREATING FILE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkA2DPpolicies()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v0, "BT_A2DP"

    invoke-direct {p0, v6, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->verifyPolicyVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-lez v0, :cond_5

    const-string/jumbo v0, "BT_A2DP"

    invoke-direct {p0, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyItems(Ljava/lang/String;)V

    const-string/jumbo v0, "BT_A2DP"

    invoke-direct {p0, v0, v10, v11}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyVersion(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendA2dpPolicyUpdateIntent()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {v6, v12, v13}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbA2dpVersion:J

    return-void

    :catch_0
    move-exception v7

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InitDatabase had error, recovered, send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendA2dpPolicyUpdateIntent()V

    :cond_6
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "latest polices have already been updated for BT_A2DP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkBLEpolicies()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v0, "BT_BLE"

    invoke-direct {p0, v6, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->verifyPolicyVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-lez v0, :cond_5

    const-string/jumbo v0, "BT_BLE"

    invoke-direct {p0, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyItems(Ljava/lang/String;)V

    const-string/jumbo v0, "BT_BLE"

    invoke-direct {p0, v0, v10, v11}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyVersion(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendBlePolicyUpdateIntent()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {v6, v12, v13}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbBleVersion:J

    return-void

    :catch_0
    move-exception v7

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InitDatabase had error, recovered, send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendBlePolicyUpdateIntent()V

    :cond_6
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "latest polices have already been updated for BT_BLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkHFPpolicies()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v0, "BT_HFP"

    invoke-direct {p0, v7, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->verifyPolicyVersion(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v12

    if-lez v0, :cond_5

    const-string/jumbo v0, "BT_HFP"

    invoke-direct {p0, v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyItems(Ljava/lang/String;)V

    const-string/jumbo v0, "BT_HFP"

    invoke-direct {p0, v0, v10, v11}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->updatePolicyVersion(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendHfpPolicyUpdateIntent()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-static {v7, v12, v13}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDbHfpVersion:J

    return-void

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "InitDatabase had error, recovered, send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->sendHfpPolicyUpdateIntent()V

    :cond_6
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "latest polices have already been updated for BT_HFP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cleanup()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "quit init handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public cleanupLooper()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cleanupLooper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "quit init handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    :cond_0
    return-void
.end method

.method public getAbuseAccumulatedScanTime()I
    .locals 11

    const/4 v10, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAbuseAccumulatedScanTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    return v6

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BLE Abuse Scan"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return v6

    :catch_0
    move-exception v7

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getAbuseMaxScanCount()I
    .locals 11

    const/4 v10, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAbuseMaxScanCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BLE Abuse Scan"

    const/4 v9, 0x0

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return v7

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public getAbuseScanPackages()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAbuseScanPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BLE Abuse Scan List"

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8

    :catch_0
    move-exception v9

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public getNotAllowedVoiceRecognitionDeviceList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x5

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getNotAllowedVoiceRecognitionDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "NotAllowedVoiceRecognition"

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-ge v10, v12, :cond_3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v8
.end method

.method public initBluetoothDatabase()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initBluetoothDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SCPM client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    iput-boolean v9, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDdbInitialized:Z

    iget v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init trial exceeds threshold, count ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->cleanupLooper()V

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    iput v9, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    iput-boolean v9, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    invoke-virtual {v0, v10}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitHandler:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v7, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$initHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    goto :goto_0

    :cond_2
    iput v9, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mRetryCount:I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->initBroadcastReceiver()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->cleanupLooper()V

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no polices in db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->insertInitialPoclicyValues()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    iput-boolean v10, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDdbInitialized:Z

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkHFPpolicies()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkBLEpolicies()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->checkA2DPpolicies()V

    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    if-eqz v0, :cond_6

    iput-boolean v9, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mInitFailed:Z

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->verifyFilePolicyVersion()V

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    :cond_6
    return-void

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void
.end method

.method public initBroadcastReceiver()V
    .locals 3

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;

    invoke-direct {v1, p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;-><init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)V

    iput-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sec.app.policy.UPDATE.BT_HFP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sec.app.policy.UPDATE.BT_BLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sec.app.policy.UPDATE.BT_A2DP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public insertInitialPoclicyValues()V
    .locals 10

    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v7, :cond_0

    return-void

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "BT_HFP"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "inserting initial values"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "BT_BLE"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "BT_A2DP"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "FILE_HFP"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "FILE_BLE"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "policyName"

    const-string/jumbo v8, "FILE_A2DP"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "policyVersion"

    const-string/jumbo v8, "0"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5
    iget-object v7, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_0
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in querying the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_1
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in inserting in the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_2
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in inserting in the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_3
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in inserting in the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_4
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in inserting in the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void

    :catch_5
    move-exception v2

    sget-object v7, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception in inserting in the database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void
.end method

.method public isA2dpBlackListDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAvrcBlackListDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->A2DP_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v12, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v12, v0, :cond_4

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v11

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isAvoidInBandRingtoneDevice(Ljava/lang/String;)Z
    .locals 13

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isAvoidInBandRingtoneDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->HFP_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data3"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data4"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data5"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "AvoidInBandRingtone"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v12, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v12, v0, :cond_3

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v11

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public isCiBlacklistedDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isCiBlacklistedDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BLE CI BlackList"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB has null address"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v12

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB has null Device Name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isDownloadableDbExists()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getDbError()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB exception had occured, returning default value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SCPM client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mDdbInitialized:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB Init is not yet successful, waiting for SCPM client to enable, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isLocalDbValuePresent()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB is not yet synced with SCPM client, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isSCPMClientExist()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScBlacklistedDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isScBlacklistedDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v3, "downloadable_item = ?"

    const/4 v11, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->BLE_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "downloadable_data1"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "downloadable_data2"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "BLE SC BlackList"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB has null address"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v12

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in querying the database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    sget-object v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DB has null Device Name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public refreshDbFile()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshDbFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->refreshDownloadableDbFileNative()V

    :cond_1
    return-void
.end method

.method public sendA2dpPolicyUpdateIntent()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_A2DP_UPDATE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendA2dpPolicyUpdateIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendBlePolicyUpdateIntent()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_BLE_UPDATE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendBlePolicyUpdateIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendHfpPolicyUpdateIntent()V
    .locals 4

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_HFP_UPDATE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendHfpPolicyUpdateIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public verifyFilePolicyVersion()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifying file policy versions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "policyName = ?"

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isDownloadableDbExists()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "BT_HFP"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    :cond_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "BT_BLE"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    :cond_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "BT_A2DP"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_7

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "FILE_HFP"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_9

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    :cond_8
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "FILE_BLE"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_b

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    :cond_a
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "policyVersion"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "FILE_A2DP"

    const/16 v28, 0x0

    aput-object v7, v6, v28

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_d

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_c
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    const-wide/16 v2, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v2, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v16

    const-wide/16 v2, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v2, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v8

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SqliteHfpVersion version is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FileHfpVersion version is= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SqliteBleVersion version is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FileBleVersion version is= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SqliteA2dpVersion version is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " FileA2dpVersion version is= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v6, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gtz v2, :cond_e

    const-wide/16 v2, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v6, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_10

    :cond_e
    :goto_0
    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "policy version mismatch - update file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->writePolicyItemsToFile()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->refreshDbFile()V

    :cond_f
    return-void

    :catch_0
    move-exception v20

    sget-object v2, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in querying the database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-wide/16 v2, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_f

    goto :goto_0
.end method

.method public zeroFileVersion()V
    .locals 8

    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "zeroFileVersion"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "policyName = ?"

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "policyVersion"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->mCr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/samsung/downloadabledb/BluetoothDownloadableDbProvider;->POLICY_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "FILE_HFP"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception in updating the database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->setDbError()V

    return-void
.end method
