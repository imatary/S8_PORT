.class public Lcom/android/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtils$1;,
        Lcom/android/phone/PhoneUtils$2;,
        Lcom/android/phone/PhoneUtils$3;,
        Lcom/android/phone/PhoneUtils$CallerInfoToken;,
        Lcom/android/phone/PhoneUtils$ConnectionHandler;,
        Lcom/android/phone/PhoneUtils$FgRingCalls;,
        Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-MmiCode$StateSwitchesValues:[I

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static bAutoRebootPopupLaunched:Z

.field private static backKeyPressed:Z

.field private static dequeMmiDialog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private static mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

.field private static mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private static mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private static mEpdgW2L:Z

.field private static mHangupFromCsTimer:Z

.field private static mHangupFromPsTimer:Z

.field private static mHasVzwVideoCall:Z

.field private static mIsDelayRestoreDefaultSim:Z

.field private static mIsMmiDialogHiding:Z

.field private static mIsUSSDDialogHiding:Z

.field private static mMmiPendingState:Lcom/android/internal/telephony/MmiCode$State;

.field private static mPrevDefaultVoiceSubId:I

.field private static mRoamMccChangedDialog:Landroid/app/AlertDialog;

.field private static mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

.field private static mToast:Landroid/widget/Toast;

.field private static newDialog:Landroid/app/AlertDialog;

.field private static pd:Landroid/app/ProgressDialog;

.field static sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static sIsNoiseSuppressionEnabled:Z

.field private static sIsSpeakerEnabled:Z

.field private static sUssdDialog:Landroid/app/AlertDialog;

.field private static sUssdMsg:Ljava/lang/StringBuilder;


# direct methods
.method static synthetic -get0()Lcom/android/phone/PhoneUtils$ConnectionHandler;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-object v0
.end method

.method static synthetic -get3()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/StringBuilder;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-MmiCode$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneUtils;->-com-android-internal-telephony-MmiCode$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->-com-android-internal-telephony-MmiCode$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MmiCode$State;->values()[Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/phone/PhoneUtils;->-com-android-internal-telephony-MmiCode$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/MmiCode$State;)Lcom/android/internal/telephony/MmiCode$State;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtils;->mMmiPendingState:Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method static synthetic -set1(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtils;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set3(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->arabicToDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/Phone;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->notifyMMIOperation(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    sput-boolean v5, Lcom/android/phone/PhoneUtils;->sIsNoiseSuppressionEnabled:Z

    sput-object v4, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    sput-object v4, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    sput-object v4, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    sput-object v4, Lcom/android/phone/PhoneUtils;->mMmiPendingState:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->dequeMmiDialog:Ljava/util/ArrayDeque;

    sput-boolean v5, Lcom/android/phone/PhoneUtils;->backKeyPressed:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mHasVzwVideoCall:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mEpdgW2L:Z

    sput-object v4, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsUSSDDialogHiding:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mIsDelayRestoreDefaultSim:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mHangupFromCsTimer:Z

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->mHangupFromPsTimer:Z

    sput-object v4, Lcom/android/phone/PhoneUtils;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v0, Lcom/android/phone/PhoneUtils$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    new-instance v0, Lcom/android/phone/PhoneUtils$2;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$2;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->bAutoRebootPopupLaunched:Z

    sput-object v4, Lcom/android/phone/PhoneUtils;->mRoamMccChangedDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/phone/PhoneUtils$3;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$3;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v3, "end active call failed!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-object v2, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->removeMessages(I)V

    sget-object v2, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v3, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Lcom/android/phone/PhoneUtils$FgRingCalls;

    invoke-direct {v2, v0, p1}, Lcom/android/phone/PhoneUtils$FgRingCalls;-><init>(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public static answerCall(Lcom/android/internal/telephony/Call;)Z
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v9, "answerCall()...ringingcall is null!!"

    invoke-static {v9, v7}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    return v8

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "answerCall("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "GATE"

    const-string/jumbo v10, "<GATE-M>ANSWER_CALL</GATE-M>"

    invoke-static {v9, v10, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v5, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_3

    :try_start_0
    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_6

    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v4

    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;)V

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    :cond_4
    :goto_2
    return v0

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v8, "PhoneUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "answerCall: caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v7, :cond_4

    iget-object v8, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    iget-object v9, v1, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_2
.end method

.method private static arabicToDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x660

    if-lt v0, v3, :cond_1

    const/16 v3, 0x669

    if-gt v0, v3, :cond_1

    add-int/lit16 v3, v0, -0x630

    int-to-char v0, v3

    :cond_0
    :goto_1
    aput-char v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x6f0

    if-lt v0, v3, :cond_0

    const/16 v3, 0x6f9

    if-gt v0, v3, :cond_0

    add-int/lit16 v3, v0, -0x6c0

    int-to-char v0, v3

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const-string/jumbo v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    return v0

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static displayLongToast(I)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayLongToast(Ljava/lang/String;)V

    return-void
.end method

.method public static displayLongToast(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V
    .locals 18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v14, 0x0

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v12

    const-string/jumbo v15, "PhoneUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "displayMMIComplete: state="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_1

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "PhoneUtils"

    const-string/jumbo v16, "newDialog is showing"

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v15, 0x0

    sput-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->-getcom-android-internal-telephony-MmiCode$StateSwitchesValues()[I

    move-result-object v15

    invoke-virtual {v12}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unexpected MmiCode state: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v13

    const-string/jumbo v15, "PhoneUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "- using text from PENDING MMI message: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v12, v15, :cond_8

    const-string/jumbo v15, "displaying PUK unblocking progress dialog."

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    new-instance v11, Landroid/app/ProgressDialog;

    const/4 v15, 0x5

    invoke-direct {v11, v2, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v11, v14}, Landroid/app/ProgressDialog;->setTitle(I)V

    invoke-virtual {v11, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7de

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    :goto_1
    invoke-virtual {v11}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {v2, v11}, Lcom/android/phone/PhoneGlobals;->setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_1
    const/4 v13, 0x0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_5

    const v14, 0x10400c5

    const v15, 0x7f0d032f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    goto :goto_0

    :cond_5
    :pswitch_3
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v13

    const-string/jumbo v15, "PhoneUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "- using text from MMI message: \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v15, "dcm_parse_network_service_ussd"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static/range {p1 .. p2}, Lcom/android/phone/PhoneUtilsJpn;->parseUSSD(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;)Ljava/lang/CharSequence;

    move-result-object v10

    const-string/jumbo v15, "NoUserOperation"

    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    return-void

    :cond_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object v13, v10

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v11}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getPUKEntryActivity()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    :cond_9
    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v12, v15, :cond_1b

    const-string/jumbo v15, "MMI code has finished running."

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    if-eqz v13, :cond_a

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_b

    :cond_a
    return-void

    :cond_b
    const-string/jumbo v15, "disappear_ussd_cancel_popup"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v12, v15, :cond_c

    return-void

    :cond_c
    const-string/jumbo v15, "remove_mmi_complete_popup"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v12, v15, :cond_d

    const v15, 0x10400b1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    return-void

    :cond_d
    const-string/jumbo v15, "dcm_parse_network_service_ussd"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    const-string/jumbo v15, "PhoneUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "displayMMIComplete. state : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isChangeCurrentSetting()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v15

    if-eqz v15, :cond_13

    :cond_e
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    if-nez v15, :cond_15

    new-instance v15, Landroid/app/AlertDialog$Builder;

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v16, Lcom/android/phone/PhoneUtils$4;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$4;-><init>()V

    const v17, 0x7f0d032a

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    new-instance v16, Lcom/android/phone/PhoneUtils$5;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$5;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v15

    if-eqz v15, :cond_f

    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v12, v15, :cond_f

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    const v16, 0x7f0d0ae6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_14

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7de

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    :goto_3
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    :cond_10
    :goto_4
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_11

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\n"

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d03ee

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    sget-object v16, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    :goto_5
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :cond_12
    :goto_6
    const-string/jumbo v15, "beep_vibration_for_ussd"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/phone/PhoneUtils;->notifyMMICompleteThread(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_2

    :cond_13
    sget-object v15, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v12, v15, :cond_e

    const v15, 0x7f0d0bc8

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const v15, 0x7f0d0bcb

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string/jumbo v15, "PhoneUtils"

    const-string/jumbo v16, "show USSD toast for DCM."

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_14
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_3

    :cond_15
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    if-eqz v15, :cond_10

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    const v16, 0x7f0d032a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    :cond_16
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    if-nez v15, :cond_1a

    new-instance v15, Landroid/app/AlertDialog$Builder;

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v16, Lcom/android/phone/PhoneUtils$6;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$6;-><init>()V

    const v17, 0x7f0d032a

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    new-instance v16, Lcom/android/phone/PhoneUtils$7;

    invoke-direct/range {v16 .. v16}, Lcom/android/phone/PhoneUtils$7;-><init>()V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_19

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7de

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    :goto_7
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    :cond_17
    :goto_8
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_18

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v16, "\n"

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d03ee

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\n"

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    sget-object v16, Lcom/android/phone/PhoneUtils;->sUssdMsg:Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    :cond_19
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_7

    :cond_1a
    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    if-eqz v15, :cond_17

    sget-object v15, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    const v16, 0x7f0d032a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(I)V

    goto :goto_8

    :cond_1b
    const-string/jumbo v15, "USSD code has requested user input. Constructing input dialog."

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    const-string/jumbo v15, "feature_india"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_1c

    sget-object v16, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    monitor-enter v16

    :try_start_0
    const-string/jumbo v15, "Dismiss earlier Dialog with Pending state"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v15, 0x0

    sput-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v16

    :cond_1c
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v15, 0x7f0e001e

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v15, "layout_inflater"

    invoke-virtual {v3, v15}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v15, 0x7f040033

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v15, 0x7f1000b3

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const-string/jumbo v15, "keypad_type_to_phone_for_ussd"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1d

    const/4 v15, 0x3

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1d
    const v15, 0x7f1000b2

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v8, Lcom/android/phone/PhoneUtils$8;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v8, v6, v2, v0, v1}, Lcom/android/phone/PhoneUtils$8;-><init>(Landroid/widget/EditText;Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/MmiCode;Lcom/android/internal/telephony/Phone;)V

    new-instance v15, Landroid/app/AlertDialog$Builder;

    invoke-direct {v15, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0d032b

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0d0327

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    sput-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    sput-object v12, Lcom/android/phone/PhoneUtils;->mMmiPendingState:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v7, Lcom/android/phone/PhoneUtils$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v6}, Lcom/android/phone/PhoneUtils$9;-><init>(Lcom/android/internal/telephony/Phone;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setSelection(I)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1f

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7de

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/high16 v16, 0x80000

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    :goto_9
    new-instance v15, Lcom/android/phone/PhoneUtils$10;

    invoke-direct {v15}, Lcom/android/phone/PhoneUtils$10;-><init>()V

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    if-eqz v9, :cond_1e

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a002d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextColor(I)V

    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    const/16 v16, -0x2

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a002d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_6

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_1f
    sget-object v15, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x7d8

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setType(I)V

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-string/jumbo v2, "desktopmode"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sput-object v2, Lcom/android/phone/PhoneUtils;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v2, Lcom/android/phone/PhoneUtils;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v4, "registerListener Desktop Mode Event"

    invoke-static {v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/PhoneUtils;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v2, Lcom/android/phone/PhoneUtils;->mDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    const v2, 0x7f0d0324

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-object v5

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "change_ussd_popup_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v2

    const-string/jumbo v3, "ussdRunning"

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-object v5

    :cond_4
    new-instance v2, Landroid/app/ProgressDialog;

    const/4 v4, 0x5

    invoke-direct {v2, p0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v4

    const-string/jumbo v5, "ussdRunning"

    invoke-virtual {v4, p0, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_1
    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    return-object v2

    :cond_5
    sget-object v2, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method

.method public static displayToast(I)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v0, Lcom/android/phone/PhoneUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/net/Uri;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "disable_format_number"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    :cond_3
    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_2
.end method

.method public static getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return-object v8

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v6, "PhoneUtils"

    const-string/jumbo v7, "getCallerNumber : callerInfo is null"

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-object v8

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-ne v5, v9, :cond_3

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "unknown"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "private_num"

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d031d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v3, "getContext() - No PhoneGlobals here!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    goto :goto_0
.end method

.method public static getEnterPrisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catch_0
    move-exception v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFullIccSerialNumber(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumber(Lcom/android/internal/telephony/Phone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFullIccSerialNumber(Lcom/android/internal/telephony/Phone;Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFullIccSerialNumber - full : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / iccSerialNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFullIccSerialNumberSubId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumberSubId(Lcom/android/internal/telephony/Phone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFullIccSerialNumberSubId(Lcom/android/internal/telephony/Phone;Z)Ljava/lang/String;
    .locals 6

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumber(Lcom/android/internal/telephony/Phone;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFullIccSerialNumberSubId - full : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / iccSerialNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFullIccSerialNumberSubId - phoneIccId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getHasVzwVideoCall()Z
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v2, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v4, :cond_0

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall fgCall is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall TelephonyConnectionService is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall fgConn is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getHasBeenVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall fgConn is hasbeenvideo"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall bgCall is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall TelephonyConnectionService is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall bgConn is not null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getHasBeenVideoCall()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall bgConn is hasbeenvideo"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v6, "getHasVzwVideoCall noCalls hasbeenVideo"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method public static getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "found IMSPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string/jumbo v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;-><init>()V

    throw v3

    :cond_2
    return-object v0
.end method

.method static getPhoneForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telephony/Phone;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPstnConnectionServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getPhoneFromIccId(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method private static getPhoneFromIccId(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 6

    const-string/jumbo v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPhoneFromIccId - iccId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumberSubId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneFromIccId(Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getPrevDefaultSubidForRestoreSim()I
    .locals 1

    sget v0, Lcom/android/phone/PhoneUtils;->mPrevDefaultVoiceSubId:I

    return v0
.end method

.method public static getPropertySimSixmode()Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "gsm.sim.sixmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v0, v2, v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPropertySimSixmode MultiSIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v0, v2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "getPropertySimSixmode  ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPropertySimSixmode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getPstnConnectionServiceName()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneUtils;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I
    .locals 2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getPhoneForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static getVoiceControlCallSettingsSummary()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string/jumbo v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mBargeInRecognizer.isChineseMode() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isChineseMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "PhoneUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mBargeInRecognizer.getBargeInCmdLanguage() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getBargeInCmdLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v9}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v9, v8}, Lcom/samsung/android/speech/SemSpeechRecognizer;->getCommandStringArray(II)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v5, 0x7f0d05da

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aget-object v6, v0, v10

    aput-object v6, v5, v10

    aget-object v6, v0, v8

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVoiceControlCallSettingsSummary : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    return-object v3
.end method

.method public static hangup(Lcom/android/internal/telephony/Call;)Z
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "- hangup(Call): hangupForegroundResumeBackground..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "- hangup(Call): regular hangup()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call hangup: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static hangup(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "hangup(): hanging up ringing call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "hangup(): hanging up foreground call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "hangup(): hanging up background call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "hangup(): no active call to hang up"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static hangupActiveCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    return v0
.end method

.method static hangupAllCalls(Lcom/android/internal/telephony/CallManager;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_2
.end method

.method static hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "hangupRingingAndActive: Hang up Ringing Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "hangupRingingAndActive: Hang up Foreground Call"

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    :cond_1
    if-nez v2, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hangupRingingCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "hangupRingingCall(): regular incoming call: hangup()"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "hangupRingingCall(): call-waiting call: hangup()"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "PhoneUtils"

    const-string/jumbo v2, "hangupRingingCall: no INCOMING or WAITING call"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static hasConferenceCall()Z
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "hasConferenceCall : true"

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static hasGlobalRoamingPackage()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "com.samsung.android.globalroaming"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasGlobalRoamingPackage() ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hideMmiDialog()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneUtils"

    const-string/jumbo v1, "Hide Mmi Dialog"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PhoneUtils"

    const-string/jumbo v1, "Hide Ussd Dialog"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    sput-boolean v2, Lcom/android/phone/PhoneUtils;->mIsUSSDDialogHiding:Z

    :cond_2
    return-void
.end method

.method public static initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneUtils$ConnectionHandler;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneUtils$ConnectionHandler;-><init>(Lcom/android/phone/PhoneUtils$ConnectionHandler;)V

    sput-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneUtils;->mConnectionHandler:Lcom/android/phone/PhoneUtils$ConnectionHandler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 15

    :try_start_0
    const-string/jumbo v11, "com.sec.android.internal.ims.IIMSTelephony$Stub"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v11, "asInterface"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Landroid/os/IBinder;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v9, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "imsphone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v11, p0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz p1, :cond_0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", ret = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v11, 0x0

    return-object v11

    :catch_0
    move-exception v2

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v5

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v3

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v1

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_5
    move-exception v4

    const-string/jumbo v11, "PhoneUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invokeSecImsInterface -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isAbsentSimState(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isAllSimNotReady()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v3, "allow to enter network mode if cdma phone is working"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v2, "change_network_mode_when_no_sim_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v3, "allow to enter network mode if cdma phone is working"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    const-string/jumbo v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAbsentSimState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isAliveVoLTEGroupCall()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v2, :cond_0

    return v6

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "isGroupCall"

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "PhoneUtils"

    const-string/jumbo v5, "isAliveVoLTEGroupCall FG"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "isGroupCall"

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "PhoneUtils"

    const-string/jumbo v5, "isAliveVoLTEGroupCall BG"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    return v6
.end method

.method public static isAudioHas_Receiver(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isAudioHas_Receiver context is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_1

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isAudioHas_Receiver audioManager is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v6

    if-ne v6, v7, :cond_2

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v5, "isAudioHas_Receiver: false"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method static isConferenceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    return v5

    :cond_1
    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v4, :cond_2

    iget-object v4, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    return v4

    :cond_3
    return v5
.end method

.method public static isDataRoaming()Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isDataRoaming multisim"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataRoaming prefPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, ""

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataRoaming simStateOfCurrentDataSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isDataRoaming Sim is Ready"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDataRoaming return value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "gsm.operator.isroaming"

    const-string/jumbo v6, ""

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "true"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "gsm.operator.isroaming"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_1
    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isDataRoaming Sim not Ready"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string/jumbo v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "gsm.operator.isroaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_3
    return v6
.end method

.method public static isDefaultIMEI()Z
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "357858010034783"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "000000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "004400152020002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "International Mobile Equipment Identity is initial state"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isDelayRestoreDefaultSim()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsDelayRestoreDefaultSim:Z

    return v0
.end method

.method public static isEncryptionMode()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEncryptionMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public static isHangupFromCsTimer()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mHangupFromCsTimer:Z

    return v0
.end method

.method public static isHangupFromPsTimer()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mHangupFromPsTimer:Z

    return v0
.end method

.method public static isIdleSecIms()Z
    .locals 7

    const/4 v6, 0x5

    const/4 v4, 0x1

    const-string/jumbo v5, "enabled"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-eq v1, v6, :cond_0

    if-ne v0, v6, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "isIdle"

    invoke-static {v5, v4}, Lcom/android/phone/PhoneUtils;->invokeSecImsInterface(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    :cond_3
    return v4
.end method

.method static isInEmergencyCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static isIntIncomingCall(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Check prefix of incoming call number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mcc :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    const-string/jumbo v6, "00"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string/jumbo v6, "450"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "Check prefix of incoming call isIntIncomingCall TRUE "

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public static isIntIncomingCallLock(Lcom/android/internal/telephony/Connection;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Check prefix of incoming phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isIntIncomingCallLock(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isIntIncomingCallLock(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "incoming_intcall_lock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check prefix of incoming call checkSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isKTSIM()Z
    .locals 4

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.simtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "45008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PhoneUtils"

    const-string/jumbo v2, "isKeyguardLocked - true"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "PhoneUtils"

    const-string/jumbo v2, "isKeyguardLocked - false"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static isLGTSIM()Z
    .locals 4

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.simtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isPhoneAccountActive(Landroid/telephony/SubscriptionManager;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRoamingArea()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRoamingArea : current_plmn is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDefaultIMEI()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isRoamingArea : DefaultIMEI"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v6

    :cond_1
    const-string/jumbo v3, "oversea"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSimCardReady()Z

    move-result v2

    :goto_0
    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ril.rejectedPlmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rejected PLMN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "450"

    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isRoutableViaGateway(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSKTSIM()Z
    .locals 4

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ril.simtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "45005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isSimCardReady()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    const-string/jumbo v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x0

    const/16 v1, 0x3a

    const-string/jumbo v0, "com.google.android.marvin.talkback"

    const-string/jumbo v2, "com.samsung.android.app.talkback"

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    if-nez p0, :cond_0

    return v10

    :cond_0
    const/4 v6, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    const-string/jumbo v6, ""

    :cond_2
    move-object v3, v7

    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_5
    const/4 v8, 0x1

    return v8

    :cond_6
    return v10
.end method

.method public static isTestSIM()Z
    .locals 2

    const-string/jumbo v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "12"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isWifiCallStatus()Z
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "isWifiCallStatus context is empty "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v3, "wifi_call_enable"

    invoke-static {v0, v3, v1}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isWifiCallStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneUtils"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "PhoneUtils"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PhoneUtils"

    const-string/jumbo v3, "Default phones haven\'t been made yet!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public static makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static makePstnPhoneAccountHandle(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public static makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 4

    if-eqz p2, :cond_0

    const-string/jumbo v0, "E"

    :goto_0
    const-string/jumbo v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makePstnPhoneAccountHandleWithPrefix - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1, p2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getFullIccSerialNumberSubId(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static makePstnPhoneAccountHandleWithPrefix(Ljava/lang/String;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPstnConnectionServiceName()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v1, v0, p0}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v1
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v4, :cond_2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput v5, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    :cond_2
    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v2, v4, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v2, p3, :cond_5

    if-ne p3, v4, :cond_5

    :cond_3
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v2

    const-string/jumbo v3, "private_num"

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_0
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    :cond_5
    return-object p2

    :cond_6
    if-ne v1, v5, :cond_4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static notifyMMICompleteThread(Lcom/android/internal/telephony/Phone;)V
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    new-instance v1, Lcom/android/phone/PhoneUtils$11;

    invoke-direct {v1, p0}, Lcom/android/phone/PhoneUtils$11;-><init>(Lcom/android/internal/telephony/Phone;)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "USSDNoti"

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static notifyMMIOperation(Lcom/android/internal/telephony/Phone;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v5, 0x18

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v9, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc370

    const/4 v8, -0x1

    invoke-virtual {v3, v7, v8, v10, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    :goto_0
    const-string/jumbo v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyMMIOperation: mAudioManager.getRingerMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v4, Landroid/media/ToneGenerator;

    const/4 v6, 0x1

    const/16 v7, 0x64

    invoke-direct {v4, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    invoke-virtual {v4}, Landroid/media/ToneGenerator;->stopTone()V

    invoke-virtual {v4}, Landroid/media/ToneGenerator;->release()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyMMIOperation: Exception caught while creating ToneGenerator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static phoneIsCdma()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phone.getActivePhoneType() failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static phoneIsCdma(I)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "PhoneUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phone.getActivePhoneTypeForSlot() failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/android/internal/telephony/Phone;
    .locals 2

    if-eqz p3, :cond_0

    invoke-static {p0, p3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I
    .locals 7

    sget-object v5, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;)I

    move-result v0

    return v0
.end method

.method public static placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLcom/android/phone/CallGatewayManager$RawGatewayInfo;Lcom/android/phone/CallGatewayManager;)I
    .locals 16

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "placeCall()... number: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", GW: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v6, :cond_1

    const-string/jumbo v13, "non-null"

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", emergency? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    :goto_1
    const/4 v10, 0x0

    if-eqz v11, :cond_4

    if-eqz v6, :cond_3

    const-string/jumbo v13, "tel"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    :goto_2
    iget-object v13, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v13, v14, :cond_5

    const/4 v7, 0x1

    :goto_3
    :try_start_0
    iget-object v13, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v8, v14}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-nez v3, :cond_6

    const/4 v10, 0x2

    :goto_4
    return v10

    :cond_1
    const-string/jumbo v13, "null"

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v13, "PhoneUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unsupported URL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    return v13

    :cond_4
    move-object/from16 v8, p2

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string/jumbo v13, "PhoneUtils"

    const-string/jumbo v14, "Exception from app.mCM.dial()"

    invoke-static {v13, v14, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x2

    return v13

    :cond_6
    if-eqz p6, :cond_7

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/phone/CallGatewayManager;->setGatewayInfoForConnection(Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)V

    :cond_7
    const/4 v13, 0x2

    if-ne v9, v13, :cond_8

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;)V

    :cond_8
    if-nez v6, :cond_9

    const-string/jumbo v4, "content"

    if-eqz p3, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_a

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v3, v13, v14, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_4

    :cond_a
    instance-of v13, v12, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v13, :cond_b

    check-cast v12, Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p3

    iput-object v0, v12, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_5

    :cond_b
    check-cast v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v13, v12, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object/from16 v0, p3

    iput-object v0, v13, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto :goto_5
.end method

.method static sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    :cond_0
    return-void
.end method

.method static setAudioMode()V
    .locals 0

    return-void
.end method

.method static setAudioMode(Lcom/android/internal/telephony/CallManager;)V
    .locals 0

    return-void
.end method

.method public static setDelayRestoreDefaultSim(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mIsDelayRestoreDefaultSim:Z

    return-void
.end method

.method public static setEpdgW2L(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mEpdgW2L:Z

    return-void
.end method

.method public static setHangupFromCsTimer(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mHangupFromCsTimer:Z

    return-void
.end method

.method public static setHangupFromPsTimer(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneUtils;->mHangupFromPsTimer:Z

    return-void
.end method

.method public static setPrevDefaultSubidForRestoreSim(I)V
    .locals 0

    sput p0, Lcom/android/phone/PhoneUtils;->mPrevDefaultVoiceSubId:I

    return-void
.end method

.method static final setRadioPower(Z)V
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static showDomesticIncome()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "DialogType"

    const-string/jumbo v3, "DOMESTIC"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showHidedMmiDialog()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "showHidedMmiDialog..."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/PhoneUtils;->newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsMmiDialogHiding:Z

    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneUtils;->mIsUSSDDialogHiding:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "showHidedUSSDDialog..."

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/PhoneUtils;->sUssdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sput-boolean v1, Lcom/android/phone/PhoneUtils;->mIsUSSDDialogHiding:Z

    :cond_1
    return-void
.end method

.method public static showMccChange()V
    .locals 9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lte_roaming_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v2, :cond_1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v7, "com.android.phone.LGTNetworkAutoRebootProgressDialog"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "DialogType"

    const-string/jumbo v7, "MCC"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActivityNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "PhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showMccChange : Don\'t show by ManualSelection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , lte roaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showNetworkAutoReboot()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showNetworkAutoReboot - SKT isManual = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "showNetworkAutoReboot - SKT just set AUTO mode without showing rebooting popup!! "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic - set AUTO mode!! "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "getIsManualSelection - auto! "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/android/phone/PhoneUtils;->bAutoRebootPopupLaunched:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "PhoneUtils"

    const-string/jumbo v4, "showNetworkAutoReboot - already called LGTNetworkAutoRebootPopup so ignore duplicated intent! "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/phone/PhoneUtils;->bAutoRebootPopupLaunched:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static showNetworkAutoRebootIfManualSelected(Z)V
    .locals 18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    const-string/jumbo v13, "ril.roaming.networkmode"

    const-string/jumbo v14, "AUTO"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "gsm.sim.roaming"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IMSI efRoaming = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", IsManualSelection = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ,networkMode = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const-string/jumbo v13, ""

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "showNetworkAutoRebootIfManualSelected - efRoaming is blank !! "

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v13, "00"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v13, "ril.currentplmn"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "domestic"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showNetworkAutoRebootIfManualSelected - currentplmn is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v13, "AUTO"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "showNetworkAutoRebootIfManualSelected - AUTO MODE "

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v13, "showNetworkAutoRebootIfManualSelected - MANUAL MODE need to show popup!! "

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string/jumbo v13, "00"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string/jumbo v13, " setIMSIAuto !! "

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const/4 v13, 0x1

    new-array v12, v13, [B

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-byte v13, v12, v14

    const/4 v10, 0x0

    :try_start_0
    const-class v13, Lcom/android/internal/telephony/IccCard;

    const-string/jumbo v14, "setRoaming"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Landroid/os/Message;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v10, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    const-string/jumbo v13, " networkSelectAuto !! "

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    :cond_6
    if-eqz p0, :cond_8

    const-string/jumbo v13, "AUTO"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string/jumbo v13, "setAutoBandMode"

    invoke-static {v13}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    sget v13, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_7
    :goto_1
    new-instance v11, Lcom/android/phone/PhoneUtils$12;

    invoke-direct {v11}, Lcom/android/phone/PhoneUtils$12;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    if-eqz p0, :cond_a

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.android.phone"

    const-string/jumbo v14, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    :cond_8
    const-string/jumbo v13, "support_lte_romaing"

    invoke-static {v13}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLTEModeOn(Z)V

    :cond_9
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v13, "PhoneUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ActivityNotFoundException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/android/phone/PhoneUtils$13;

    invoke-direct {v13}, Lcom/android/phone/PhoneUtils$13;-><init>()V

    const-wide/16 v14, 0xbb8

    invoke-virtual {v7, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public static declared-synchronized showNetworkRoamMccChanged()V
    .locals 8

    const-class v6, Lcom/android/phone/PhoneUtils;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v7, "showNetworkRoamMccChanged()"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    new-instance v3, Lcom/android/phone/PhoneUtils$14;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtils$14;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0e0056

    invoke-direct {v4, v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-object v5, Lcom/android/phone/PhoneUtils;->mRoamMccChangedDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v6

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v5, "PhoneUtils"

    const-string/jumbo v7, "createdialog"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f0d07dc

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0d07dd

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0d075d

    invoke-virtual {v5, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f0d075e

    invoke-virtual {v5, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sget-object v5, Lcom/android/phone/PhoneUtils;->mRoamMccChangedListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v7, 0x7d8

    invoke-virtual {v5, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    sput-object v2, Lcom/android/phone/PhoneUtils;->mRoamMccChangedDialog:Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    return-object v0
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Lcom/android/phone/CallGatewayManager$RawGatewayInfo;)Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/net/Uri;

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    check-cast v3, Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v6, p0, v3, v4, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v4

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v4, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_3

    sget-object v4, Lcom/android/phone/CallGatewayManager;->EMPTY_INFO:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    if-eq p4, v4, :cond_3

    iget-object v1, p4, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    :cond_3
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v4, v1, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v1, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v4, v7, :cond_4

    iput-boolean v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v6, p0, v1, v4, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v4

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v4, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_1

    :cond_5
    iput-boolean v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_1

    :cond_6
    instance-of v4, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v4, :cond_c

    move-object v0, v3

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v4, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_8

    iget-object v2, p4, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v5, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v4, v2, v5}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v2, v4, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v4, v7, :cond_9

    iput-boolean v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/phone/PhoneUtils;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v6, p0, v2, v4, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v4

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-virtual {v4, v6, p2, p3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    iput-boolean v8, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    :cond_a
    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v4, :cond_b

    new-instance v4, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v4}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    :cond_b
    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iput-boolean v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0

    :cond_c
    new-instance v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtils$CallerInfoToken;-><init>()V

    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    iput-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    iput-boolean v7, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto/16 :goto_0
.end method

.method public static startSafeActivity(Landroid/content/Intent;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "PhoneUtils"

    const-string/jumbo v2, "Intent is null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 5

    const-string/jumbo v2, "switchHoldingAndActive()..."

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchHoldingAndActive: caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static turnOnSpeaker(Landroid/content/Context;ZZ)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    if-eqz p2, :cond_0

    sput-boolean p1, Lcom/android/phone/PhoneUtils;->sIsSpeakerEnabled:Z

    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v2, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->setEchoSuppressionEnabled()V

    return-void
.end method

.method private static updateCdmaCallStateOnNewOutgoingCall(Lcom/android/phone/PhoneGlobals;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    goto :goto_0
.end method
