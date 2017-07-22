.class public Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Lcom/android/phone/phonevoicerecorder/IMessageCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;,
        Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field public static PHONE_PATH:Ljava/lang/String;

.field private static SecMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

.field private static TPhoneMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

.field private static volatile sInstance:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallBackHandler:Landroid/os/Handler;

.field private mCallerName:Ljava/lang/String;

.field private mCallerNumber:Ljava/lang/String;

.field mConnection:Lcom/android/internal/telephony/Connection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mIsPreparing:Z

.field private mIsRecording:Z

.field private mIsServiceAlive:Z

.field private mRecordSaveFilePath:Ljava/lang/String;

.field private mRecordedCallId:Ljava/lang/String;

.field private mRecordedDurationMSec:I

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

.field private mStartRecordTime:J

.field private mStateChangedRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsServiceAlive:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/os/RegistrantList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->setRecordSaveFilePath(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStartRecordTime:J

    iput v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordSaveFilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsServiceAlive:Z

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallBackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "PhoneVoiceRecorder Create"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    iput-wide v4, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStartRecordTime:J

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    return-void
.end method

.method private canStartRecord()Z
    .locals 7

    const/16 v6, 0x12c

    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "recording is already running"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "checkAvailableStorage failed"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v6, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "checkMediaScannerRunning failed"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0600

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v6, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "checkSDCardMount failed"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0601

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v6, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    return v4

    :cond_3
    iget-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    const-string/jumbo v1, "preparing is already running"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v4

    :cond_4
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isNsriSecureCallMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    const-string/jumbo v1, "cancelRecordBySecureCall by Secure Call success"

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v4

    :cond_5
    return v2
.end method

.method private checkAvailableStorage()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAvailableStorage()J
    .locals 8

    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    return-wide v4
.end method

.method private getCallBackObject()Lcom/android/phone/phonevoicerecorder/IMessageCallBack;
    .locals 1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->TPhoneMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;

    invoke-direct {v0, p0}, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V

    sput-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->TPhoneMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    :cond_0
    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->TPhoneMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->SecMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;

    invoke-direct {v0, p0}, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V

    sput-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->SecMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    :cond_2
    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->SecMessageCallBack:Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 4

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneVoiceRecorder"

    const-string/jumbo v2, "getContext() - fail to get ApplicationContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;
    .locals 2

    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sInstance:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sInstance:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;-><init>()V

    sput-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sInstance:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sInstance:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setRecordSaveFilePath(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordSaveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateRecordSaveFilePath(Lcom/android/services/telephony/TelephonyConnection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecordSaveFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "setRecordSaveFilePath: can not get mConnection"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public cancelRecordBySecureCall()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "cancelRecordBySecureCall by Secure Call"

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    iput v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    const-string/jumbo v0, "cancelRecordBySecureCall by Secure Call success"

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return v8

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "volume"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v8

    :catch_0
    move-exception v7

    return v9
.end method

.method public checkSDCardMount()Z
    .locals 4

    new-instance v0, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method getConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getRecordSaveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordTime()J
    .locals 2

    iget v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRecordedCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const-string/jumbo v0, "PhoneVoiceRecorder"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method log(Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v0, "PhoneVoiceRecorder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pauseRecord()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "pauseRecord"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->pauseRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pauseRecording failed"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public registerCallBackHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallBackHandler:Landroid/os/Handler;

    return-void
.end method

.method public registerForInfoStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeRecord()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "resumeRecord"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->resumeRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "resumeRecording failed"

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public sendCallBackMessage(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsServiceAlive:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallBackMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is failed, Service is not alive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallBackHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallBackMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is failed, Handler is not registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallBackMessage : sendCallBackMessage - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public sendStartRecordFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getCallBackObject()Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/phonevoicerecorder/IMessageCallBack;->sendStartRecordFailed()V

    return-void
.end method

.method public sendStartRecordSucceed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getCallBackObject()Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/phonevoicerecorder/IMessageCallBack;->sendStartRecordSucceed()V

    return-void
.end method

.method public sendStopRecordFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getCallBackObject()Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/phonevoicerecorder/IMessageCallBack;->sendStopRecordFailed()V

    return-void
.end method

.method public sendStopRecordSucceed(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getCallBackObject()Lcom/android/phone/phonevoicerecorder/IMessageCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/phone/phonevoicerecorder/IMessageCallBack;->sendStopRecordSucceed(Ljava/lang/String;J)V

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    return-void
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;

    return-void
.end method

.method public setServiceAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsServiceAlive:Z

    return-void
.end method

.method protected showStopRecordSucceed()V
    .locals 6

    const/4 v5, 0x0

    const v1, 0x7f0d05fc

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0x12c

    invoke-static {v2, v4, v5, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized startRecord()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->startRecord(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRecord(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->canStartRecord()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_1
    sput-object p1, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecord : PHONE_PATH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mConnection:Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRecord : mRecordedCallId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    new-instance v3, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;)V

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Call"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stopRecord()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "stopRecord"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stopRecording"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "stopRecord succeeded"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mRecordedDurationMSec:I

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPreparing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsRecording:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mIsPaused:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallerNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "stopRecord failed"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStopRecordFailed()V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x12c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    const-string/jumbo v1, "Call recording is already stopped. - ignore"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public unRegisterCallBackHandler(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mCallBackHandler:Landroid/os/Handler;

    return-void
.end method

.method public unregisterForInfoStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->mStateChangedRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
