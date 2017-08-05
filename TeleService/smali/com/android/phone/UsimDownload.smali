.class public Lcom/android/phone/UsimDownload;
.super Landroid/app/Activity;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/UsimDownload$1;,
        Lcom/android/phone/UsimDownload$2;,
        Lcom/android/phone/UsimDownload$3;,
        Lcom/android/phone/UsimDownload$4;,
        Lcom/android/phone/UsimDownload$5;,
        Lcom/android/phone/UsimDownload$6;,
        Lcom/android/phone/UsimDownload$ScreenMode;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-UsimDownload$ScreenModeSwitchesValues:[I

.field private static final SAFE_DBG:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field static final productName:Ljava/lang/String;


# instance fields
.field private AttacReject_121315:Z

.field private AttacReject_161722:Z

.field private AttacReject_ByPass:Z

.field private KtNumRegSendMsg:B

.field private KtNumTimerExpired:Z

.field private SimState:Ljava/lang/String;

.field private SimType:Ljava/lang/String;

.field private isCMC:Z

.field private ktIdleNumReg:Z

.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyButton:Landroid/widget/Button;

.field private mFailHandler:Landroid/os/Handler;

.field private mFailRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageView2:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocked:Z

.field private mMessage:Landroid/widget/TextView;

.field private mMode:Lcom/android/phone/UsimDownload$ScreenMode;

.field private mOTAHandler:Landroid/os/Handler;

.field private mOkButton:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegisterButton:Landroid/widget/Button;

.field private mRetry:Z

.field private mRetryNoButton:Landroid/widget/Button;

.field private mRetryYesButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSMSHandler:Landroid/os/Handler;

.field private mSMSRunnable:Ljava/lang/Runnable;

.field private mTitle:Landroid/widget/TextView;

.field private mUsim:Lcom/android/internal/telephony/IccCard;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private networkRejectCauseCS:I

.field private networkRejectCauseIdle:I

.field private networkRejectCausePS:I

.field private networkStatusValue:I

.field private reboot_reason:Ljava/lang/String;

.field private scAddress:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/phone/UsimDownload;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/phone/UsimDownload;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/UsimDownload;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/phone/UsimDownload;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/phone/UsimDownload;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/phone/UsimDownload;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/UsimDownload;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->isCMC:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/UsimDownload;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/UsimDownload;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/UsimDownload;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-UsimDownload$ScreenModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/UsimDownload;->-com-android-phone-UsimDownload$ScreenModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/UsimDownload;->-com-android-phone-UsimDownload$ScreenModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/UsimDownload$ScreenMode;->values()[Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFailRetryNo:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    sput-object v0, Lcom/android/phone/UsimDownload;->-com-android-phone-UsimDownload$ScreenModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1

    :catch_12
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/UsimDownload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/UsimDownload;->mRetry:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/phone/UsimDownload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/UsimDownload;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->placeCallforOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/UsimDownload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaRegSendMsg()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/UsimDownload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/UsimDownload;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/UsimDownload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestStopKtOtaReg()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/UsimDownload;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/UsimDownload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->updateNetworkStatus()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/UsimDownload;->productName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/UsimDownload;->SAFE_DBG:Z

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    iput v2, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    iput v2, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    iput v2, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z

    const-string/jumbo v0, "ro.board.platform"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "exynos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/UsimDownload;->isCMC:Z

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-byte v2, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->ktIdleNumReg:Z

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->mRetry:Z

    iput-boolean v2, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$1;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$1;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$2;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$2;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mSMSRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/UsimDownload$3;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$3;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/phone/UsimDownload$4;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$4;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/UsimDownload$5;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$5;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/UsimDownload$6;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$6;-><init>(Lcom/android/phone/UsimDownload;)V

    iput-object v0, p0, Lcom/android/phone/UsimDownload;->mOTAHandler:Landroid/os/Handler;

    return-void
.end method

.method private closePopup(J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/UsimDownload$8;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$8;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isRejectCause121315()Z
    .locals 4

    const/16 v3, 0xf

    const/16 v2, 0xd

    const/16 v1, 0xc

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private isRejectCause161722()Z
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0xfe

    const/16 v3, 0x16

    const/16 v2, 0x11

    const/16 v1, 0x10

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v5, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private isRejectCauseByPass()Z
    .locals 6

    const/16 v5, 0x28

    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    :cond_3
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eqz v0, :cond_1

    :cond_5
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    if-eq v0, v5, :cond_1

    return v2

    :cond_6
    iget v0, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_5

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private placeCallforOTA()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "tel"

    const-string/jumbo v1, "*575"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v4, p0, Lcom/android/phone/UsimDownload;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/UsimDownload;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4, v3, v1, v5, v5}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/UsimDownload;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v5, 0x0

    invoke-static {v4, v2, v1, v0, v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Z)I

    const/4 v4, 0x1

    return v4
.end method

.method private queryRequestKtOtaReg()V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    iput-byte v6, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x4

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x19

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-void

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v6

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v4

    const-string/jumbo v6, "UsimDownload"

    const-string/jumbo v7, "close fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private queryRequestKtOtaRegSendMsg()V
    .locals 15

    const/4 v12, 0x1

    iput-byte v12, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v8

    const-string/jumbo v2, "0000001005"

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    const/16 v13, 0xe

    :try_start_0
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    const/4 v12, 0x0

    const/16 v13, 0x12

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "00 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-boolean v12, Lcom/android/phone/UsimDownload;->SAFE_DBG:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IMSI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "imei: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SMSC: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "iccid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "text: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v12, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    invoke-static {v12, v2, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    iget-object v12, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pdu.encodedScAddress: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v12, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "UsimDownload"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "pdu.encodedMessage: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v14}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v8, v2, v12, v10}, Landroid/telephony/SmsManager;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v12, "UsimDownload"

    const-string/jumbo v13, "NullPointerException"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    goto/16 :goto_0
.end method

.method private queryRequestSetOtaReg(I)V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x5

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-byte v6, p1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-void

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    throw v6

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v4

    const-string/jumbo v6, "UsimDownload"

    const-string/jumbo v7, "close fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private queryRequestStopKtOtaReg()V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    iput-byte v6, p0, Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x4

    const/16 v6, 0x16

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x36

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "UsimDownload"

    const-string/jumbo v7, "write fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v6, "UsimDownload"

    const-string/jumbo v7, "close fail!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private rebootSystem(J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/UsimDownload$7;

    invoke-direct {v1, p0}, Lcom/android/phone/UsimDownload$7;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method private updateNetworkStatus()V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string/jumbo v9, "ril.skt.network_regist"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string/jumbo v9, "Status"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";Idle"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x6

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateNetworkStatus : networkStatusValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "Idle"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";CS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x4

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCauseIdle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "CS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, ";PS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCauseCS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "PS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "networkRejectCausePS = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const/16 v10, 0xfe

    if-ne v9, v10, :cond_0

    const-string/jumbo v9, "UsimDownload"

    const-string/jumbo v10, "networkRejectCauseIdle = 0xFE -> 0x00"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/phone/UsimDownload;->networkRejectCausePS:I

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCause121315()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownload;->AttacReject_121315:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCause161722()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownload;->AttacReject_161722:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->isRejectCauseByPass()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NumberFormatException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v9, "UsimDownload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "StringIndexOutOfBoundsException = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, p0, Lcom/android/phone/UsimDownload;->networkStatusValue:I

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    .locals 9

    const v8, 0x7f0d0743

    const v5, 0x7f0201c5

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x4

    iput-object p1, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string/jumbo v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateScreen mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/UsimDownload;->-getcom-android-phone-UsimDownload$ScreenModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/phone/UsimDownload$ScreenMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_OTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d073b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "ril.domesticOta"

    const-string/jumbo v2, "UsimDownload"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0753

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0a52

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "SKTNumRegFail"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0753

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0a53

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d074b

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "SKTNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0753

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0a53

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0752

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const-string/jumbo v1, "ril.domesticOta"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ril.domesticOtaStart"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/android/phone/UsimDownload;->closePopup(J)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, "SKC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d074e

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0752

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "SKC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "SKC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "LUC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v1, "RefreshReset"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    :cond_6
    const-string/jumbo v1, "ril.domesticOtaStart"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ril.domesticOta"

    const-string/jumbo v2, "RefreshReset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d074c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "KTC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d074d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "LUC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d074c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v1, "KTC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v1, "LUC"

    sget-object v2, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0755

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "UsimRemovedReset"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v2, 0x1b58

    invoke-direct {p0, v2, v3}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "KtUsimRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0736

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d073f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iput-boolean v7, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0740

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0741

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v7, p0, Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0742

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0745

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "ril.domesticOtaStart"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/high16 v1, 0x410000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v1, "KtNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d073e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "KtNumRegFailRetryNo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0744

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0747

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0748

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d074b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "LGTNumRegSuccess"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/android/phone/UsimDownload;->rebootSystem(J)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d0746

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const-string/jumbo v1, "LGTNumRegFail"

    iput-object v1, p0, Lcom/android/phone/UsimDownload;->reboot_reason:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0d073a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0d074a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_e
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public emergencyCallAction()V
    .locals 4

    const-string/jumbo v0, "com.samsung.phone.EmergencyDialer.LIST"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v2, "KTC"

    sget-object v3, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.numreg_emergency"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initPrefOTA()V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v3, "UsimDownload"

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/UsimDownload;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "Download"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v3, "UsimDownload"

    const-string/jumbo v4, "Set Download = false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v10, "UsimDownload"

    const-string/jumbo v11, "onCreate()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v10, "ril.domesticOtaStart"

    const-string/jumbo v11, "true"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ril.reject_121315"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v10, "com.sec.android.sktota.usim.FAIL"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "com.sec.android.sktota.usim.SUCCESS"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "com.sec.android.ktota.usim.READY"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "com.android.server.status.regist_reject"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v10, "com.sec.android.ota.usim.FINISH"

    invoke-virtual {v1, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v11, "com.sec.android.phone.permission.WRITE_OTA_KEYSTRING"

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v1, v11, v12}, Lcom/android/phone/UsimDownload;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v10, "ril.simtype"

    const-string/jumbo v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    const-string/jumbo v10, "gsm.sim.state"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    const-string/jumbo v10, "ABSENT"

    iget-object v11, p0, Lcom/android/phone/UsimDownload;->SimState:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    if-eq v11, v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x14

    if-ne v11, v10, :cond_1

    :cond_0
    const-string/jumbo v10, ""

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->scAddress:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v11, p0, Lcom/android/phone/UsimDownload;->mOTAHandler:Landroid/os/Handler;

    const/16 v12, 0x3e9

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    :cond_1
    const-string/jumbo v10, "window"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v10, v10, 0x2306

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/high16 v10, 0x400000

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x2

    if-eq v11, v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->SimType:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x14

    if-ne v11, v10, :cond_3

    :cond_2
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->requestWindowFeature(I)Z

    const v10, 0x7f0400fc

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->setContentView(I)V

    const-string/jumbo v10, "power"

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string/jumbo v10, "UsimDownload"

    const v11, 0x1000000a

    invoke-virtual {v5, v11, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->initPrefOTA()V

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->updateNetworkStatus()V

    const v10, 0x7f1002ad

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mTitle:Landroid/widget/TextView;

    const v10, 0x7f1002b0

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMessage:Landroid/widget/TextView;

    const v10, 0x7f1002b1

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    const v10, 0x7f1002b2

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    const v10, 0x7f1002b3

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    const v10, 0x7f1002b4

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    const v10, 0x7f1002b5

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    const v10, 0x7f1002ae

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    const v10, 0x7f1002af

    invoke-virtual {p0, v10}, Lcom/android/phone/UsimDownload;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mImageView2:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mEmergencyButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/phone/UsimDownload$9;

    invoke-direct {v11, p0}, Lcom/android/phone/UsimDownload$9;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mOkButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/phone/UsimDownload$10;

    invoke-direct {v11, p0}, Lcom/android/phone/UsimDownload$10;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mRegisterButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/phone/UsimDownload$11;

    invoke-direct {v11, p0}, Lcom/android/phone/UsimDownload$11;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mRetryYesButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/phone/UsimDownload$12;

    invoke-direct {v11, p0}, Lcom/android/phone/UsimDownload$12;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mRetryNoButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/phone/UsimDownload$13;

    invoke-direct {v11, p0}, Lcom/android/phone/UsimDownload$13;-><init>(Lcom/android/phone/UsimDownload;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/UsimDownload;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v10, "ACTION"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "ACTION"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "REFRESHRESTART"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->RefreshReset:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_5
    :goto_0
    const/16 v10, 0x1a

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v10, 0xbb

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v10, 0x6

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v10, 0x43a

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/android/phone/UsimDownload;->isSystemKeyEventRequested(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.phone.UsimDownload.start"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0, v10}, Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V

    return-void

    :cond_6
    const-string/jumbo v10, "SIMREMOVEDRESET"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->UsimRemovedReset:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_7
    const-string/jumbo v10, "KTSIMREMOVED"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v10, "UsimDownload"

    const-string/jumbo v11, "KTSIMREMOVED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->KtUsimRemoved:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_8
    const-string/jumbo v10, "KtRegisterMode"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string/jumbo v10, "ril.domesticOta"

    const-string/jumbo v11, "KtfNumberReg"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v10, "KtRegisterInIdle"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/UsimDownload;->ktIdleNumReg:Z

    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->queryRequestKtOtaReg()V

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string/jumbo v10, "ril.domesticOta"

    const-string/jumbo v11, "KtfNumberReg"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v10, "LGTRegisterMain"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const-string/jumbo v10, "ril.domesticOta"

    const-string/jumbo v11, "LGTNumberReg"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v10, "LGTRegistering"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    if-nez v0, :cond_c

    const-string/jumbo v10, "UsimDownload"

    const-string/jumbo v11, "getCatService returned null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    const-string/jumbo v10, "ril.domesticOta"

    const-string/jumbo v11, "LGTNumberReg"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "UsimDownload"

    const-string/jumbo v11, "Sent envelope to trigger BIP for OTA..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBipforOTA(Z)V

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/android/phone/UsimDownload;->placeCallforOTA()Z

    goto :goto_1

    :cond_e
    const-string/jumbo v10, "LGTOverseaMode"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/phone/UsimDownload$ScreenMode;->LGTOverseaMode:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v10, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "UsimDownload"

    const-string/jumbo v3, "onDestroy() : SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const-string/jumbo v2, "ril.domesticOta"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ril.domesticOtaStart"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/phone/UsimDownload;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.UsimDownload.end"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "UsimDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1onKeyDown keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const-string/jumbo v0, "UsimDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "2onKeyDown keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    :cond_1
    return v3

    :cond_2
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause(), simState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1a

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v1, 0x6

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0x43a

    invoke-direct {p0, v1, v4}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v3, "ril.domesticOta"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ril.domesticOtaResult"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/phone/UsimDownload;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v3, "KTC"

    sget-object v4, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ril.numreg_emergency"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "UsimDownload"

    const-string/jumbo v4, "onResume() : set to long timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    const/high16 v3, 0x1770000

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v3, "LUC"

    sget-object v4, Lcom/android/phone/UsimDownload;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v3, 0x410000

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    const/16 v3, 0x1a

    invoke-direct {p0, v3, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v8, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v3, 0xbb

    invoke-direct {p0, v3, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/4 v3, 0x6

    invoke-direct {p0, v3, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    const/16 v3, 0x43a

    invoke-direct {p0, v3, v5}, Lcom/android/phone/UsimDownload;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v8}, Lcom/android/phone/UsimDownload;->isSystemKeyEventRequested(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/UsimDownload;->mLocked:Z

    const-string/jumbo v3, "OK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v3}, Lcom/android/phone/UsimDownload;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    const-string/jumbo v3, "UsimDownload"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccessByBIP:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_2
    :goto_0
    const-string/jumbo v3, "ril.domesticOtaResult"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_3
    return-void

    :cond_4
    sget-object v3, Lcom/android/phone/UsimDownload$ScreenMode;->SKTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "KtfNumberReg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "LGTNumberReg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    iput-object v3, p0, Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string/jumbo v1, "ril.domesticOta"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsimDownload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStart(), simState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "KtfNumberReg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "LGTNumberReg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mUsim:Lcom/android/internal/telephony/IccCard;

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload;->mFailHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mFailRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    const-string/jumbo v0, "UsimDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStop(), simState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/UsimDownload;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method rebootSystem()V
    .locals 2

    new-instance v0, Lcom/android/phone/UsimDownload$14;

    invoke-direct {v0, p0}, Lcom/android/phone/UsimDownload$14;-><init>(Lcom/android/phone/UsimDownload;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    goto :goto_0
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public toastNotInService()V
    .locals 2

    const v0, 0x7f0d0749

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public toastRebootSystem()V
    .locals 2

    const v0, 0x7f0d0750

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
