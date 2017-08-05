.class public Lcom/android/phone/BackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupRestoreReceiver.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BackupRestoreReceiver$PropertyBean;
    }
.end annotation


# static fields
.field private static MSG_FROM:[Ljava/lang/String;

.field private static final NUM_FROM:[Ljava/lang/String;

.field private static QUICKREPLY_MSG_FROM:[Ljava/lang/String;

.field private static final RECORD_FROM:[Ljava/lang/String;

.field private static supportPref:[Ljava/lang/String;

.field private static supportSettingDB:[Ljava/lang/String;


# instance fields
.field private mAutoRejectNumberFile:Ljava/io/File;

.field private mBackupThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mDecryption_AutoRejectNumberFile:Ljava/io/File;

.field private mDecryption_PreferenceDataFile:Ljava/io/File;

.field private mDecryption_QuickReplyMessageFile:Ljava/io/File;

.field private mDecryption_RecordNumberFile:Ljava/io/File;

.field private mDecryption_RejectMessageFile:Ljava/io/File;

.field private mDecryption_RejectMessageFile_Old:Ljava/io/File;

.field private mDestinationFile:Ljava/io/File;

.field private mEncryption_AutoRejectNumberFile:Ljava/io/File;

.field private mEncryption_PreferenceDataFile:Ljava/io/File;

.field private mEncryption_QuickReplyMessageFile:Ljava/io/File;

.field private mEncryption_RecordNumberFile:Ljava/io/File;

.field private mEncryption_RejectMessageFile:Ljava/io/File;

.field private mPreferenceDataFile:Ljava/io/File;

.field private mQuickReplyMessageFile:Ljava/io/File;

.field private mRecordNumberFile:Ljava/io/File;

.field private mRejectMessageFile:Ljava/io/File;

.field private mRestoreThread:Ljava/lang/Thread;

.field private mSourceFile:Ljava/io/File;

.field private mSourceFileEntryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/BackupRestoreReceiver$PropertyBean;",
            ">;"
        }
    .end annotation
.end field

.field private req_size:I

.field private result:I


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BackupRestoreReceiver;->backupData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BackupRestoreReceiver;->restoreData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/BackupRestoreReceiver;->sendResultForKies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "reject_number"

    aput-object v1, v0, v4

    const-string/jumbo v1, "reject_checked"

    aput-object v1, v0, v5

    const-string/jumbo v1, "reject_match"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->NUM_FROM:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "reject_message"

    aput-object v1, v0, v4

    const-string/jumbo v1, "edit_checked"

    aput-object v1, v0, v5

    const-string/jumbo v1, "remind_time"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->MSG_FROM:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "quickreply_message"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->QUICKREPLY_MSG_FROM:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "enhanced_selected_number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->RECORD_FROM:[Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "button_swipe_callmessage_key"

    aput-object v1, v0, v3

    const-string/jumbo v1, "button_only_contactwithphone_key"

    aput-object v1, v0, v4

    const-string/jumbo v1, "meterial_anykey_mode_preference"

    aput-object v1, v0, v5

    const-string/jumbo v1, "meterial_voice_cmd_preference"

    aput-object v1, v0, v6

    const-string/jumbo v1, "meterial_powerkey_end_preference"

    aput-object v1, v0, v7

    const-string/jumbo v1, "button_automatic_answer_key"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_caller_info_card_preference_key"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_answer_vibration_preference"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_end_vibration_preference"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_connect_tone_preference"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_end_tone_preference"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_alertoncall_preference"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_callsettings_vibrate_when_ringing"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "material_callsettings_keytones"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "intcallsetting_outgoing"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "meterial_intcallsetting_incoming"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "intcallsetting_voice_noti"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "meterial_voicecall_protection_preference"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "dropdown_button_dtmf_key"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_country_name"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "country_code"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "button_auto_retry_key"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "switch_clir_key"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "record_calls_automatically"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "button_call_popup_key"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "record_calls_notification"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "meterial_volumekey_mode_preference"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "search_nearby_places"

    aput-object v1, v0, v3

    const-string/jumbo v1, "roaming_assistance_setting"

    aput-object v1, v0, v4

    const-string/jumbo v1, "record_calls_automatically_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "spam_call_enable"

    aput-object v1, v0, v6

    const-string/jumbo v1, "smart_call_privacy_notice_agree"

    aput-object v1, v0, v7

    const-string/jumbo v1, "spam_call_auto_update"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "unknown_mode"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFileEntryMap:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/BackupRestoreReceiver;->result:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BackupRestoreReceiver;->req_size:I

    return-void
.end method

.method private backupData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    const/4 v5, 0x3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/BackupRestoreReceiver;->getBackupAutoRejectNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/phone/BackupRestoreReceiver;->getBackupRejectMessage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/phone/BackupRestoreReceiver;->getBackupRecordnumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/phone/BackupRestoreReceiver;->getBackupPreference(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/phone/BackupRestoreReceiver;->getBackupQuickReplyMessage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/phone/utils/Encryption;->streamCrypt(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/encrypt_autoreject_number.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/phone/utils/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_AutoRejectNumberFile:Ljava/io/File;

    :cond_0
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/encrypt_reject_message_simple.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/phone/utils/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RejectMessageFile:Ljava/io/File;

    :cond_1
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/encrypt_record_number.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/phone/utils/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RecordNumberFile:Ljava/io/File;

    :cond_2
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/encrypt_quickreply_message.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/phone/utils/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_QuickReplyMessageFile:Ljava/io/File;

    :cond_3
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/encrypt_preference.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p3}, Lcom/android/phone/utils/Encryption;->encrypt(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_PreferenceDataFile:Ljava/io/File;

    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BackupRestoreReceiver;->result:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    :cond_5
    :goto_0
    return v5

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    goto :goto_0

    :catch_2
    move-exception v4

    :try_start_3
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_4
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_5
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    goto :goto_0

    :catchall_0
    move-exception v6

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    :cond_6
    throw v6
.end method

.method private checkAlreadyInUse(Ljava/lang/String;I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reject_number=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "reject_match"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v0, v2}, Lcom/android/phone/PhoneUtilsCommon;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private checkDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p1}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-object v0
.end method

.method private checkRecordNumAlreadyInUse(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enhanced_selected_number=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v0, v2}, Lcom/android/phone/PhoneUtilsCommon;->queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private checkSupportFeature()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/phone/BackupRestoreReceiver;->checkVideoCallSetting(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/BackupRestoreReceiver;->checkVoiceMailSetting(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/BackupRestoreReceiver;->checkMoreSetting(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private deleteDecryptedFiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method private deleteEncryptedFiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_AutoRejectNumberFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RejectMessageFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RecordNumberFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_PreferenceDataFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_PreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_PreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_QuickReplyMessageFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mEncryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method private deleteOriginalFiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id asc"

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->NUM_FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getBackupAutoRejectNumber(Ljava/lang/String;)Ljava/io/File;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v14

    if-gtz v14, :cond_3

    :cond_0
    const/4 v14, 0x0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    :try_start_2
    throw v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v6

    :goto_1
    const-string/jumbo v14, "BackupRestoreReceiver"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    return-object v8

    :catch_1
    move-exception v16

    goto :goto_0

    :cond_2
    return-object v14

    :cond_3
    :try_start_3
    new-instance v9, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/com.android.phone_autorejectnum.csv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    :cond_4
    if-eqz v5, :cond_c

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v14

    if-lez v14, :cond_c

    const/4 v15, 0x0

    const/4 v12, 0x0

    :try_start_5
    new-instance v13, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string/jumbo v14, "_id,autoreject_number,autoreject_checked,autoreject_match"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v14, 0x1

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x2

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v14, 0x3

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v14

    if-nez v14, :cond_5

    :cond_6
    if-eqz v13, :cond_7

    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    :goto_3
    if-eqz v15, :cond_c

    :try_start_8
    throw v15
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    move-exception v14

    move-object v8, v9

    :goto_4
    :try_start_9
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :goto_5
    if-eqz v5, :cond_8

    :try_start_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_6
    if-eqz v15, :cond_10

    :try_start_b
    throw v15
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v7

    :goto_7
    const-string/jumbo v14, "BackupRestoreReceiver"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :catch_4
    move-exception v15

    goto :goto_3

    :catch_5
    move-exception v14

    :goto_8
    :try_start_c
    throw v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :goto_9
    if-eqz v12, :cond_9

    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_9
    :goto_a
    if-eqz v15, :cond_b

    :try_start_e
    throw v15

    :catchall_2
    move-exception v14

    move-object/from16 v15, v16

    move-object v8, v9

    goto :goto_5

    :catch_6
    move-exception v17

    if-nez v15, :cond_a

    move-object/from16 v15, v17

    goto :goto_a

    :cond_a
    move-object/from16 v0, v17

    if-eq v15, v0, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    throw v14
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_c
    if-eqz v5, :cond_d

    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_b
    if-eqz v16, :cond_e

    :try_start_10
    throw v16
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_7
    move-exception v6

    move-object v8, v9

    goto/16 :goto_1

    :catch_8
    move-exception v16

    goto :goto_b

    :cond_e
    move-object v8, v9

    goto/16 :goto_2

    :catch_9
    move-exception v16

    if-nez v15, :cond_f

    move-object/from16 v15, v16

    goto :goto_6

    :cond_f
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    :try_start_11
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    throw v14
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :catch_a
    move-exception v7

    move-object v8, v9

    goto :goto_7

    :catchall_3
    move-exception v14

    move-object/from16 v15, v16

    goto :goto_5

    :catch_b
    move-exception v14

    goto :goto_4

    :catchall_4
    move-exception v14

    goto :goto_9

    :catchall_5
    move-exception v14

    move-object v12, v13

    goto :goto_9

    :catch_c
    move-exception v14

    move-object v12, v13

    goto :goto_8
.end method

.method private getBackupPreference(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->settingDbBackUpToPreference()V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/com.android.phone_preferences.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mDestinationFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.phone_preferences"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFile:Ljava/io/File;

    iget-object v4, p0, Lcom/android/phone/BackupRestoreReceiver;->mDestinationFile:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/android/phone/utils/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mDestinationFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->checkSupportFeature()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/phone/BackupRestoreReceiver;->removeBlackListKey(Lorg/w3c/dom/Document;Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/phone/BackupRestoreReceiver;->makeXmlFromDom(Lorg/w3c/dom/Document;)V

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mDestinationFile:Ljava/io/File;

    return-object v3
.end method

.method private getBackupQuickReplyMessage(Ljava/lang/String;)Ljava/io/File;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->getQuickReplyMessage()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v15

    if-gtz v15, :cond_3

    :cond_0
    const/4 v15, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    if-eqz v17, :cond_2

    :try_start_2
    throw v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v3

    :goto_1
    const-string/jumbo v15, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    return-object v6

    :catch_1
    move-exception v17

    goto :goto_0

    :cond_2
    return-object v15

    :cond_3
    :try_start_3
    new-instance v7, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/com.android.phone_quickreplymessage.csv"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_4
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v15

    if-lez v15, :cond_c

    const/16 v16, 0x0

    const/4 v13, 0x0

    :try_start_5
    new-instance v14, Ljava/io/OutputStreamWriter;

    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string/jumbo v15, "_id\tquickreply_message"

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v15, 0x1

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/phone/edge/GlanceReplyManager;->getGlanceReplyState(Landroid/content/Context;)Z

    move-result v12

    const-string/jumbo v15, "BackupRestoreReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "original string : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v15, "UTF-8"

    invoke-virtual {v11, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v15, 0x2

    invoke-static {v10, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v15, "BackupRestoreReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "encode string : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v15, "BackupRestoreReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "backup quickreplymessage : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "\t"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, "\t"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v15, "BackupRestoreReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "outputStream : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_6
    if-eqz v14, :cond_7

    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    :goto_3
    if-eqz v16, :cond_c

    :try_start_8
    throw v16
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    move-exception v15

    move-object v6, v7

    :goto_4
    :try_start_9
    throw v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_5
    if-eqz v2, :cond_8

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_6
    if-eqz v16, :cond_10

    :try_start_b
    throw v16
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v4

    :goto_7
    const-string/jumbo v15, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :catch_4
    move-exception v16

    goto :goto_3

    :catch_5
    move-exception v15

    :goto_8
    :try_start_c
    throw v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_9
    if-eqz v13, :cond_9

    :try_start_d
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_9
    :goto_a
    if-eqz v16, :cond_b

    :try_start_e
    throw v16

    :catchall_2
    move-exception v15

    move-object/from16 v16, v17

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v18

    if-nez v16, :cond_a

    move-object/from16 v16, v18

    goto :goto_a

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    throw v15
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_c
    if-eqz v2, :cond_d

    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_b
    if-eqz v17, :cond_e

    :try_start_10
    throw v17
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_7
    move-exception v3

    move-object v6, v7

    goto/16 :goto_1

    :catch_8
    move-exception v17

    goto :goto_b

    :cond_e
    move-object v6, v7

    goto/16 :goto_2

    :catch_9
    move-exception v17

    if-nez v16, :cond_f

    move-object/from16 v16, v17

    goto :goto_6

    :cond_f
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    :try_start_11
    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    throw v15
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :catch_a
    move-exception v4

    move-object v6, v7

    goto :goto_7

    :catchall_3
    move-exception v15

    move-object/from16 v16, v17

    goto :goto_5

    :catch_b
    move-exception v15

    goto :goto_4

    :catchall_4
    move-exception v15

    goto :goto_9

    :catchall_5
    move-exception v15

    move-object v13, v14

    goto :goto_9

    :catch_c
    move-exception v15

    move-object v13, v14

    goto :goto_8
.end method

.method private getBackupRecordnumber(Ljava/lang/String;)Ljava/io/File;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v12

    if-gtz v12, :cond_3

    :cond_0
    const/4 v12, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    :try_start_2
    throw v14
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v3

    :goto_1
    const-string/jumbo v12, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    return-object v5

    :catch_1
    move-exception v14

    goto :goto_0

    :cond_2
    return-object v12

    :cond_3
    :try_start_3
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/com.android.phone_recordnum.csv"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_4
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v12

    if-lez v12, :cond_c

    const/4 v13, 0x0

    const/4 v10, 0x0

    :try_start_5
    new-instance v11, Ljava/io/OutputStreamWriter;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string/jumbo v12, "_id,enhanced_selected_number"

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v12, 0x1

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v12

    if-nez v12, :cond_5

    :cond_6
    if-eqz v11, :cond_7

    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    :goto_3
    if-eqz v13, :cond_c

    :try_start_8
    throw v13
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    move-exception v12

    move-object v5, v6

    :goto_4
    :try_start_9
    throw v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_5
    if-eqz v2, :cond_8

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_6
    if-eqz v13, :cond_10

    :try_start_b
    throw v13
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v4

    :goto_7
    const-string/jumbo v12, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :catch_4
    move-exception v13

    goto :goto_3

    :catch_5
    move-exception v12

    :goto_8
    :try_start_c
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_9
    if-eqz v10, :cond_9

    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_9
    :goto_a
    if-eqz v13, :cond_b

    :try_start_e
    throw v13

    :catchall_2
    move-exception v12

    move-object v13, v14

    move-object v5, v6

    goto :goto_5

    :catch_6
    move-exception v15

    if-nez v13, :cond_a

    move-object v13, v15

    goto :goto_a

    :cond_a
    if-eq v13, v15, :cond_9

    invoke-virtual {v13, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    throw v12
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_c
    if-eqz v2, :cond_d

    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_b
    if-eqz v14, :cond_e

    :try_start_10
    throw v14
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_7
    move-exception v3

    move-object v5, v6

    goto/16 :goto_1

    :catch_8
    move-exception v14

    goto :goto_b

    :cond_e
    move-object v5, v6

    goto/16 :goto_2

    :catch_9
    move-exception v14

    if-nez v13, :cond_f

    move-object v13, v14

    goto :goto_6

    :cond_f
    if-eq v13, v14, :cond_8

    :try_start_11
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    throw v12
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :catch_a
    move-exception v4

    move-object v5, v6

    goto :goto_7

    :catchall_3
    move-exception v12

    move-object v13, v14

    goto :goto_5

    :catch_b
    move-exception v12

    goto :goto_4

    :catchall_4
    move-exception v12

    goto :goto_9

    :catchall_5
    move-exception v12

    move-object v10, v11

    goto :goto_9

    :catch_c
    move-exception v12

    move-object v10, v11

    goto :goto_8
.end method

.method private getBackupRejectMessage(Ljava/lang/String;)Ljava/io/File;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v14

    if-gtz v14, :cond_3

    :cond_0
    const/4 v14, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    if-eqz v16, :cond_2

    :try_start_2
    throw v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :catch_0
    move-exception v3

    :goto_1
    const-string/jumbo v14, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    return-object v6

    :catch_1
    move-exception v16

    goto :goto_0

    :cond_2
    return-object v14

    :cond_3
    :try_start_3
    new-instance v7, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/com.android.phone_rejectmessage_simple.csv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_4
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v14

    if-lez v14, :cond_c

    const/4 v15, 0x0

    const/4 v12, 0x0

    :try_start_5
    new-instance v13, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string/jumbo v14, "_id\treject_message\tedit_checked\tremind_time"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v14, 0x1

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v14, 0x3

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "\t"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "\t"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, "\t"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string/jumbo v14, "BackupRestoreReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "outputStream : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\t"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v14, v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result v14

    if-nez v14, :cond_5

    :cond_6
    if-eqz v13, :cond_7

    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_7
    :goto_3
    if-eqz v15, :cond_c

    :try_start_8
    throw v15
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    move-exception v14

    move-object v6, v7

    :goto_4
    :try_start_9
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v19

    :goto_5
    if-eqz v2, :cond_8

    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_6
    if-eqz v15, :cond_10

    :try_start_b
    throw v15
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    move-exception v4

    :goto_7
    const-string/jumbo v14, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :catch_4
    move-exception v15

    goto :goto_3

    :catch_5
    move-exception v14

    :goto_8
    :try_start_c
    throw v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v15

    move-object/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v19

    :goto_9
    if-eqz v12, :cond_9

    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_9
    :goto_a
    if-eqz v15, :cond_b

    :try_start_e
    throw v15

    :catchall_2
    move-exception v14

    move-object/from16 v15, v16

    move-object v6, v7

    goto :goto_5

    :catch_6
    move-exception v17

    if-nez v15, :cond_a

    move-object/from16 v15, v17

    goto :goto_a

    :cond_a
    move-object/from16 v0, v17

    if-eq v15, v0, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_b
    throw v14
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_c
    if-eqz v2, :cond_d

    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_d
    :goto_b
    if-eqz v16, :cond_e

    :try_start_10
    throw v16
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :catch_7
    move-exception v3

    move-object v6, v7

    goto/16 :goto_1

    :catch_8
    move-exception v16

    goto :goto_b

    :cond_e
    move-object v6, v7

    goto/16 :goto_2

    :catch_9
    move-exception v16

    if-nez v15, :cond_f

    move-object/from16 v15, v16

    goto :goto_6

    :cond_f
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_8

    :try_start_11
    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_10
    throw v14
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :catch_a
    move-exception v4

    move-object v6, v7

    goto :goto_7

    :catchall_3
    move-exception v14

    move-object/from16 v15, v16

    goto :goto_5

    :catch_b
    move-exception v14

    goto :goto_4

    :catchall_4
    move-exception v14

    goto :goto_9

    :catchall_5
    move-exception v14

    move-object v12, v13

    goto :goto_9

    :catch_c
    move-exception v14

    move-object v12, v13

    goto :goto_8
.end method

.method private getOrUpdateTag(Lorg/w3c/dom/Document;Z)V
    .locals 13

    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "string"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const-string/jumbo v8, "boolean"

    const/4 v9, 0x1

    aput-object v8, v0, v9

    const-string/jumbo v8, "int"

    const/4 v9, 0x2

    aput-object v8, v0, v9

    const/4 v8, 0x0

    array-length v9, v0

    :goto_0
    if-ge v8, v9, :cond_b

    aget-object v6, v0, v8

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const-string/jumbo v10, "BackupRestoreReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v5, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_a

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const/4 v7, 0x0

    const-string/jumbo v10, "string"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_3

    const-string/jumbo v10, "BackupRestoreReceiver"

    const-string/jumbo v11, "element.getFirstChild() == null"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string/jumbo v10, "name"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_7

    const-string/jumbo v10, "BackupRestoreReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setpreference name ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "boolean"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v3, v10}, Lcom/android/phone/BackupRestoreReceiver;->setPreferenceValue(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "value"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    const-string/jumbo v10, "int"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v3, v10}, Lcom/android/phone/BackupRestoreReceiver;->setPreferenceValue(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const-string/jumbo v10, "string"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v3, v7}, Lcom/android/phone/BackupRestoreReceiver;->setPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v10, "BackupRestoreReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "added = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "boolean"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFileEntryMap:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v7}, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v10, "int"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFileEntryMap:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v7}, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v10, "string"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/BackupRestoreReceiver;->mSourceFileEntryMap:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;

    const/4 v12, 0x2

    invoke-direct {v11, v12, v7}, Lcom/android/phone/BackupRestoreReceiver$PropertyBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private getQuickReplyMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->QUICKREPLY_MSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->QUICKREPLY_MSG_FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getRecordCallsNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id asc"

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->RECORD_FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->MSG_FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static isEnableNearbySearch()Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "support_search_nearby_places"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "support_search_nearby_places_mcc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v1, "BackupRestoreReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isEnableNearbySearch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeXmlFromDom(Lorg/w3c/dom/Document;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;,
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string/jumbo v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string/jumbo v5, "4"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "indent"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    iget-object v4, p0, Lcom/android/phone/BackupRestoreReceiver;->mDestinationFile:Ljava/io/File;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method private readSourcePrefFile(Ljavax/xml/parsers/DocumentBuilder;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/parsers/DocumentBuilder;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    invoke-direct {p0, v0, p3}, Lcom/android/phone/BackupRestoreReceiver;->removeBlackListKey(Lorg/w3c/dom/Document;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/BackupRestoreReceiver;->getOrUpdateTag(Lorg/w3c/dom/Document;Z)V

    return-void
.end method

.method private removeAutoRejectCurrentDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BackupRestoreReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private removeBlackListKey(Lorg/w3c/dom/Document;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "string"

    aput-object v8, v0, v7

    const-string/jumbo v8, "boolean"

    const/4 v9, 0x1

    aput-object v8, v0, v9

    const-string/jumbo v8, "int"

    const/4 v9, 0x2

    aput-object v8, v0, v9

    array-length v8, v0

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v6, v0, v7

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "name"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "BackupRestoreReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private removeCurrentDB()V
    .locals 6

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupRestoreReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeException is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private removeRecordNumCurrentDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BackupRestoreReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private removeRejectMessageCurrentDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BackupRestoreReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private restoreAutoRejectNumber(Ljava/io/File;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string/jumbo v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v12, 0x1

    aget-object v12, v1, v12

    const/4 v14, 0x3

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/android/phone/BackupRestoreReceiver;->checkAlreadyInUse(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "reject_number"

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "reject_checked"

    const/4 v14, 0x2

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "reject_match"

    const/4 v14, 0x3

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v14, v15, v11}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 v12, 0x3

    aget-object v12, v1, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "original_number"

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-virtual {v9, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v12, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v12

    move-object v7, v8

    :goto_1
    :try_start_2
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_2
    if-eqz v7, :cond_1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_3
    if-eqz v13, :cond_6

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    move-exception v3

    :goto_4
    const-string/jumbo v12, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_5
    return-void

    :cond_2
    if-eqz v8, :cond_3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :cond_3
    :goto_6
    if-eqz v13, :cond_4

    :try_start_6
    throw v13
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_2
    move-exception v3

    move-object v7, v8

    goto :goto_4

    :catch_3
    move-exception v13

    goto :goto_6

    :cond_4
    move-object v7, v8

    goto :goto_5

    :catch_4
    move-exception v14

    if-nez v13, :cond_5

    move-object v13, v14

    goto :goto_3

    :cond_5
    if-eq v13, v14, :cond_1

    :try_start_7
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_5
    move-exception v4

    :goto_7
    const-string/jumbo v12, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    :cond_6
    :try_start_8
    throw v12
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-exception v5

    :goto_8
    const-string/jumbo v12, "BackupRestoreReceiver"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v7, v8

    goto :goto_7

    :catch_8
    move-exception v5

    move-object v7, v8

    goto :goto_8

    :catchall_1
    move-exception v12

    goto :goto_2

    :catchall_2
    move-exception v12

    move-object v7, v8

    goto :goto_2

    :catch_9
    move-exception v12

    goto :goto_1
.end method

.method private restoreData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v0, 0x3

    if-eqz p2, :cond_4

    :try_start_0
    invoke-static {p2}, Lcom/android/phone/utils/Encryption;->streamCrypt(Ljava/lang/String;)V

    const-string/jumbo v6, "encrypt_autoreject_number.csv"

    const-string/jumbo v7, "com.android.phone_autorejectnum.csv"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    const-string/jumbo v6, "encrypt_reject_message_simple.csv"

    const-string/jumbo v7, "com.android.phone_rejectmessage_simple.csv"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    const-string/jumbo v6, "encrypt_reject_message.csv"

    const-string/jumbo v7, "com.android.phone_rejectmessage.csv"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile_Old:Ljava/io/File;

    const-string/jumbo v6, "encrypt_record_number.csv"

    const-string/jumbo v7, "com.android.phone_recordnum.csv"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    const-string/jumbo v6, "encrypt_preference.xml"

    const-string/jumbo v7, "com.android.phone_preferences.xml"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    const-string/jumbo v6, "encrypt_quickreply_message.csv"

    const-string/jumbo v7, "com.android.phone_quickreplymessage.csv"

    invoke-static {p1, v6, v7, p3}, Lcom/android/phone/utils/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    const-string/jumbo v6, "encrypt_autoreject_number.csv"

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BackupRestoreReceiver;->removeAutoRejectCurrentDB(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "encrypt_reject_message_simple.csv"

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BackupRestoreReceiver;->removeRejectMessageCurrentDB(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "encrypt_record_number.csv"

    invoke-direct {p0, p1, v6}, Lcom/android/phone/BackupRestoreReceiver;->removeRecordNumCurrentDB(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/phone/BackupRestoreReceiver;->restoreAutoRejectNumber(Ljava/io/File;)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    const-string/jumbo v6, "BackupRestoreReceiver"

    const-string/jumbo v7, "RejectMessageFile exist"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/phone/BackupRestoreReceiver;->restoreRejectMessage(Ljava/io/File;)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/phone/BackupRestoreReceiver;->restoreRecordNumber(Ljava/io/File;)V

    :cond_2
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/phone/BackupRestoreReceiver;->restoreQuickReplyMessage(Ljava/io/File;)V

    :cond_3
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/phone/BackupRestoreReceiver;->updatePreferenceFile(Ljava/io/File;)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/BackupRestoreReceiver;->result:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    :goto_2
    return v0

    :cond_4
    :try_start_1
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_autorejectnum.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_AutoRejectNumberFile:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_rejectmessage_simple.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_rejectmessage.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile_Old:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_recordnum.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RecordNumberFile:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_preferences.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_PreferenceDataFile:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/com.android.phone_quickreplymessage.csv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_QuickReplyMessageFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->removeCurrentDB()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    goto/16 :goto_2

    :cond_5
    :try_start_3
    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile_Old:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mDecryption_RejectMessageFile_Old:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    const-string/jumbo v6, "BackupRestoreReceiver"

    const-string/jumbo v7, "Old RejectMessageFile exist"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->restoreDefaultRejectMessage()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    goto/16 :goto_2

    :catch_2
    move-exception v2

    :try_start_5
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

    :try_start_6
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    goto/16 :goto_2

    :catch_4
    move-exception v5

    :try_start_7
    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteDecryptedFiles()V

    throw v6
.end method

.method private restoreDefaultRejectMessage()V
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListSimple:[I

    array-length v0, v6

    :try_start_0
    sget-object v6, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-gt v4, v0, :cond_2

    if-ne v4, v11, :cond_1

    const/16 v1, 0x3c

    :goto_2
    :try_start_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "_id"

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "reject_message"

    sget-object v7, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessageSimple:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "edit_checked"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "remind_time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "BackupRestoreReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreDefaultRejectMessage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v8, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v6, "BackupRestoreReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RuntimeException is  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v6, "BackupRestoreReceiver"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    :cond_2
    return-void
.end method

.method private restoreQuickReplyMessage(Ljava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string/jumbo v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v11, 0x1

    aget-object v11, v1, v11

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v3, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "decode quick reply string : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-static {v11, v3}, Lcom/android/phone/edge/GlanceReplyManager;->setReplyMessageDB(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v11, v13}, Lcom/android/phone/edge/GlanceReplyManager;->setGlanceReplyState(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v8, v9

    :goto_1
    :try_start_2
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v12

    move-object v15, v12

    move-object v12, v11

    move-object v11, v15

    :goto_2
    if-eqz v8, :cond_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_3
    if-eqz v12, :cond_5

    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    move-exception v4

    :goto_4
    const-string/jumbo v11, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    :cond_1
    if-eqz v9, :cond_2

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :cond_2
    :goto_6
    if-eqz v12, :cond_3

    :try_start_6
    throw v12
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_2
    move-exception v4

    move-object v8, v9

    goto :goto_4

    :catch_3
    move-exception v12

    goto :goto_6

    :cond_3
    move-object v8, v9

    goto :goto_5

    :catch_4
    move-exception v13

    if-nez v12, :cond_4

    move-object v12, v13

    goto :goto_3

    :cond_4
    if-eq v12, v13, :cond_0

    :try_start_7
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_5
    move-exception v5

    :goto_7
    const-string/jumbo v11, "BackupRestoreReceiver"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-exception v6

    :goto_8
    const-string/jumbo v11, "BackupRestoreReceiver"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    :catch_7
    move-exception v5

    move-object v8, v9

    goto :goto_7

    :catch_8
    move-exception v6

    move-object v8, v9

    goto :goto_8

    :catchall_1
    move-exception v11

    goto :goto_2

    :catchall_2
    move-exception v11

    move-object v8, v9

    goto :goto_2

    :catch_9
    move-exception v11

    goto :goto_1
.end method

.method private restoreRecordNumber(Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-direct {p0, v9}, Lcom/android/phone/BackupRestoreReceiver;->checkRecordNumAlreadyInUse(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "enhanced_selected_number"

    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v11, v12, v8}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v5, v6

    :goto_1
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v9

    move-object v9, v13

    :goto_2
    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_3
    if-eqz v10, :cond_6

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    move-exception v1

    :goto_4
    const-string/jumbo v9, "BackupRestoreReceiver"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_5
    return-void

    :cond_2
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :cond_3
    :goto_6
    if-eqz v10, :cond_4

    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :catch_2
    move-exception v1

    move-object v5, v6

    goto :goto_4

    :catch_3
    move-exception v10

    goto :goto_6

    :cond_4
    move-object v5, v6

    goto :goto_5

    :catch_4
    move-exception v11

    if-nez v10, :cond_5

    move-object v10, v11

    goto :goto_3

    :cond_5
    if-eq v10, v11, :cond_1

    :try_start_7
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    :catch_5
    move-exception v2

    :goto_7
    const-string/jumbo v9, "BackupRestoreReceiver"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    :cond_6
    :try_start_8
    throw v9
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    move-exception v3

    :goto_8
    const-string/jumbo v9, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v5, v6

    goto :goto_7

    :catch_8
    move-exception v3

    move-object v5, v6

    goto :goto_8

    :catchall_1
    move-exception v9

    goto :goto_2

    :catchall_2
    move-exception v9

    move-object v5, v6

    goto :goto_2

    :catch_9
    move-exception v9

    goto :goto_1
.end method

.method private restoreRejectMessage(Ljava/io/File;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string/jumbo v13, "\\d+?\\t(.+?)\\t\\d+\\t\\d+"

    const/16 v15, 0x28

    invoke-static {v13, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string/jumbo v8, ""

    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "\t"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v13, v2

    const/4 v15, 0x4

    if-ne v13, v15, :cond_0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "_id"

    const/4 v15, 0x0

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "reject_message"

    const/4 v15, 0x1

    aget-object v15, v2, v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "edit_checked"

    const/4 v15, 0x2

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "remind_time"

    const/4 v15, 0x3

    aget-object v15, v2, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "BackupRestoreReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "restoreDefaultRejectMessage : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0, v12}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_1
    const-string/jumbo v8, ""

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v13, "BackupRestoreReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "wrong pattern match : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v13

    move-object v6, v7

    :goto_2
    :try_start_2
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v18, v14

    move-object v14, v13

    move-object/from16 v13, v18

    :goto_3
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_4
    if-eqz v14, :cond_7

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    move-exception v3

    :goto_5
    const-string/jumbo v13, "BackupRestoreReceiver"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_6
    return-void

    :cond_2
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    goto/16 :goto_0

    :cond_3
    if-eqz v7, :cond_4

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :cond_4
    :goto_7
    if-eqz v14, :cond_5

    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :catch_2
    move-exception v3

    move-object v6, v7

    goto :goto_5

    :catch_3
    move-exception v14

    goto :goto_7

    :cond_5
    move-object v6, v7

    goto :goto_6

    :catch_4
    move-exception v15

    if-nez v14, :cond_6

    move-object v14, v15

    goto :goto_4

    :cond_6
    if-eq v14, v15, :cond_1

    :try_start_8
    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_5
    move-exception v4

    :goto_8
    const-string/jumbo v13, "BackupRestoreReceiver"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_6

    :cond_7
    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v5

    :goto_9
    const-string/jumbo v13, "BackupRestoreReceiver"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_6

    :catch_7
    move-exception v4

    move-object v6, v7

    goto :goto_8

    :catch_8
    move-exception v5

    move-object v6, v7

    goto :goto_9

    :catchall_1
    move-exception v13

    goto :goto_3

    :catchall_2
    move-exception v13

    move-object v6, v7

    goto :goto_3

    :catch_9
    move-exception v13

    goto :goto_2
.end method

.method private sendResultForKies(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "RESULT"

    iget v2, p0, Lcom/android/phone/BackupRestoreReceiver;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "REQ_SIZE"

    iget v2, p0, Lcom/android/phone/BackupRestoreReceiver;->req_size:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setPreferenceValue(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v1, 0x1

    const-string/jumbo v2, "BackupRestoreReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferenceValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "dtmf_type_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v1, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dtmf_tone_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "support_roaming_assistance_setting"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {v2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "enhanced_phone_voice_record"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v1, "support_spam_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "dcm_auto_reject_conditions"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-lt p1, v1, :cond_a

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static setPreferenceValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BackupRestoreReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferenceValue ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "international_dialing_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "country_code"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static setPreferenceValue(Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v4, "BackupRestoreReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferenceValue ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "swipe_to_call_message"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "only_contact_with_phone"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "anykey_mode"

    if-eqz p1, :cond_5

    move v3, v2

    :cond_5
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "AnykeyTapping"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control_incomming_calls"

    if-eqz p1, :cond_7

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incall_power_button_behavior"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "proximity_sensor"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "PowerbuttonTapping"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "incall_power_button_behavior"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_a
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "automatic_answering_enable_sharedpref"

    if-eqz p1, :cond_b

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    goto :goto_5

    :cond_c
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_caller_info_card"

    if-eqz p1, :cond_d

    :goto_6
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v2, v3

    goto :goto_6

    :cond_e
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_answer_vib"

    if-eqz p1, :cond_f

    :goto_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v2, v3

    goto :goto_7

    :cond_10
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_end_vib"

    if-eqz p1, :cond_11

    :goto_8
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_11
    move v2, v3

    goto :goto_8

    :cond_12
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_conn_tone"

    if-eqz p1, :cond_13

    :goto_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_13
    move v2, v3

    goto :goto_9

    :cond_14
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_end_tone"

    if-eqz p1, :cond_15

    :goto_a
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_15
    move v2, v3

    goto :goto_a

    :cond_16
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "alertoncall_mode"

    if-eqz p1, :cond_17

    :goto_b
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_17
    move v2, v3

    goto :goto_b

    :cond_18
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    if-eqz p1, :cond_19

    :goto_c
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    move v2, v3

    goto :goto_c

    :cond_1a
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dtmf_tone"

    if-eqz p1, :cond_1b

    :goto_d
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1b
    move v2, v3

    goto :goto_d

    :cond_1c
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "extended_restrict_international_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "outging_intcall_lock"

    if-eqz p1, :cond_1d

    :goto_e
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1d
    move v2, v3

    goto :goto_e

    :cond_1e
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string/jumbo v4, "extended_restrict_international_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "incoming_intcall_lock"

    if-eqz p1, :cond_1f

    :goto_f
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_f

    :cond_20
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "extended_restrict_international_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "intcall_voice_noti"

    if-eqz p1, :cond_21

    :goto_10
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_21
    move v2, v3

    goto :goto_10

    :cond_22
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "block_data_during_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "enable_call_protect_when_calling"

    if-eqz p1, :cond_23

    :goto_11
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_23
    move v2, v3

    goto :goto_11

    :cond_24
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v2, "international_dialing_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "toggle_country_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_25
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_26

    const-string/jumbo v4, "auto_retry_enable"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_26
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_auto_retry"

    if-eqz p1, :cond_27

    :goto_12
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_27
    move v2, v3

    goto :goto_12

    :cond_28
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string/jumbo v4, "feature_kdi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "button_clir_key"

    if-eqz p1, :cond_29

    :goto_13
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_29
    move v2, v3

    goto :goto_13

    :cond_2a
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "enhanced_phone_voice_record"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "record_calls_automatically_on_off"

    if-eqz p1, :cond_2b

    :goto_14
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_2b
    move v2, v3

    goto :goto_14

    :cond_2c
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "support_call_popup"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_popup"

    if-eqz p1, :cond_2d

    :goto_15
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_2d
    move v2, v3

    goto :goto_15

    :cond_2e
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string/jumbo v4, "enhanced_phone_voice_record"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "record_calls_notification_on_off"

    if-eqz p1, :cond_2f

    :goto_16
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_2f
    move v2, v3

    goto :goto_16

    :cond_30
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportPref:[Ljava/lang/String;

    const/16 v5, 0x1a

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volumekey_mode"

    if-eqz p1, :cond_31

    move v3, v2

    :cond_31
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "VolkeyTapping"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_32
    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/BackupRestoreReceiver;->isEnableNearbySearch()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz p1, :cond_33

    :goto_17
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_33
    move v2, v3

    goto :goto_17
.end method

.method private settingDbBackUpToPreference()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v3, "BackupRestoreReceiver"

    const-string/jumbo v4, "setting DB Backup to Preference "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/BackupRestoreReceiver;->isEnableNearbySearch()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string/jumbo v3, "support_roaming_assistance_setting"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string/jumbo v3, "enhanced_phone_voice_record"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const-string/jumbo v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const-string/jumbo v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string/jumbo v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v4, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/phone/BackupRestoreReceiver;->supportSettingDB:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private updatePreferenceFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->checkSupportFeature()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/android/phone/BackupRestoreReceiver;->readSourcePrefFile(Ljavax/xml/parsers/DocumentBuilder;Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 16

    const-string/jumbo v12, "BackupRestoreReceiver"

    const-string/jumbo v13, "backup to sCloud"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/backup"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/phone/BackupRestoreReceiver;->checkDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v10}, Lcom/android/phone/BackupRestoreReceiver;->backupData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_0

    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    invoke-static {v2}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :cond_0
    const/4 v12, 0x5

    :try_start_1
    new-array v5, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mAutoRejectNumberFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_0
    const/4 v13, 0x0

    aput-object v12, v5, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRejectMessageFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_1
    const/4 v13, 0x1

    aput-object v12, v5, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mRecordNumberFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const/4 v13, 0x2

    aput-object v12, v5, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mQuickReplyMessageFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_3
    const/4 v13, 0x3

    aput-object v12, v5, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/BackupRestoreReceiver;->mPreferenceDataFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    :goto_4
    const/4 v13, 0x4

    aput-object v12, v5, v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/backup.zip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/phone/utils/FileUtils;->zip([Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v13, Lcom/android/phone/BackupRestoreReceiver$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/android/phone/BackupRestoreReceiver$3;-><init>(Lcom/android/phone/BackupRestoreReceiver;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v12, v14, v15, v8, v13}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    const/4 v4, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    invoke-static {v2}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    :catch_0
    move-exception v3

    const-string/jumbo v12, "BackupRestoreReceiver"

    const-string/jumbo v13, "backup FileOutputStream IOException : "

    const/4 v14, 0x1

    invoke-static {v12, v13, v3, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_5

    :catch_1
    move-exception v3

    :goto_6
    :try_start_4
    const-string/jumbo v12, "BackupRestoreReceiver"

    const-string/jumbo v13, "backup IOException : "

    const/4 v14, 0x1

    invoke-static {v12, v13, v3, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    invoke-static {v2}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catch_2
    move-exception v3

    const-string/jumbo v12, "BackupRestoreReceiver"

    const-string/jumbo v13, "backup FileOutputStream IOException : "

    const/4 v14, 0x1

    invoke-static {v12, v13, v3, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_7

    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_8
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    invoke-static {v2}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    throw v12

    :catch_3
    move-exception v3

    const-string/jumbo v13, "BackupRestoreReceiver"

    const-string/jumbo v14, "backup FileOutputStream IOException : "

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v15}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_9

    :catchall_1
    move-exception v12

    move-object v7, v8

    goto :goto_8

    :catch_4
    move-exception v3

    move-object v7, v8

    goto :goto_6
.end method

.method checkMoreSetting(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "button_clir_key"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkVideoCallSetting(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "preset_image"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkVoiceMailSetting(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "button_voicemail_provider_key"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "button_voicemail_key"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "button_meterial_voicemail_notification_vibrate_key"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "BackupRestoreReceiver"

    const-string/jumbo v1, "action is null!"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "ACTION"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v0, "SECURITY_LEVEL"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_BACKUP_CALL_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteOriginalFiles()V

    invoke-direct {p0}, Lcom/android/phone/BackupRestoreReceiver;->deleteEncryptedFiles()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/phone/BackupRestoreReceiver$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/BackupRestoreReceiver$1;-><init>(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_RESTORE_CALL_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRestoreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/phone/BackupRestoreReceiver$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/BackupRestoreReceiver$2;-><init>(Lcom/android/phone/BackupRestoreReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v9, p0, Lcom/android/phone/BackupRestoreReceiver;->mRestoreThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mRestoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 15

    const-string/jumbo v11, "BackupRestoreReceiver"

    const-string/jumbo v12, "restore from sCloud"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/phone/BackupRestoreReceiver;->mContext:Landroid/content/Context;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/restore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gtz v11, :cond_1

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore size is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore FileOutputStream IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/phone/BackupRestoreReceiver;->checkDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/restore.zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lcom/android/phone/BackupRestoreReceiver$4;

    move-object/from16 v0, p3

    invoke-direct {v11, p0, v0}, Lcom/android/phone/BackupRestoreReceiver$4;-><init>(Lcom/android/phone/BackupRestoreReceiver;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v5, v8, v9, v7, v11}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V

    invoke-static {v7, v3}, Lcom/android/phone/utils/FileUtils;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v3, v11, v10}, Lcom/android/phone/BackupRestoreReceiver;->restoreData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catch_1
    move-exception v2

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore FileOutputStream IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    :try_start_5
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_4
    :goto_2
    invoke-static {v6}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catch_2
    move-exception v2

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore FileOutputStream IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v2

    :goto_3
    :try_start_7
    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_5
    :goto_4
    invoke-static {v6}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    return-void

    :catch_4
    move-exception v2

    const-string/jumbo v11, "BackupRestoreReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restore FileOutputStream IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_6
    :goto_6
    invoke-static {v6}, Lcom/android/phone/utils/FileUtils;->deleteDirectory(Ljava/io/File;)V

    throw v11

    :catch_5
    move-exception v2

    const-string/jumbo v12, "BackupRestoreReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restore FileOutputStream IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_1
    move-exception v11

    move-object v4, v5

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3
.end method
