.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IccNetworkDepersonalizationPanel$1;,
        Lcom/android/phone/IccNetworkDepersonalizationPanel$2;,
        Lcom/android/phone/IccNetworkDepersonalizationPanel$3;,
        Lcom/android/phone/IccNetworkDepersonalizationPanel$4;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;


# instance fields
.field private isVzwOperator:Z

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mLockType:I

.field private mPersoSubstate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mRetryCount:I

.field private mRetryLabel:Landroid/widget/TextView;

.field private mSimId:I

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;

.field private retryCount:I

.field private time:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->time:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubstate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->retryCount:I

    return v0
.end method

.method private static synthetic -getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/IccNetworkDepersonalizationPanel;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubstate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->retryCount:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->time:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/IccNetworkDepersonalizationPanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getSimLockInfo(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/IccNetworkDepersonalizationPanel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mConfigNetworkTypeCapability:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSimId:I

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->time:I

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSimId:I

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->time:I

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSimId:I

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCount:I

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->time:I

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getSubOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSimId:I

    invoke-static {}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iput v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimLockInfo(I)V
    .locals 5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x67

    const/4 v1, 0x5

    :goto_0
    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v1, v3}, Lcom/android/internal/telephony/IccCard;->getSimLockInfo(IILandroid/os/Message;)V

    return-void

    :pswitch_1
    const/16 v0, 0x68

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x69

    const/4 v1, 0x7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UNKNOWN"

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "UNKNOWN"

    return-object v1

    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private hideAlert()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private indicateBusy()V
    .locals 2

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private indicateError()V
    .locals 2

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d033d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private indicateSuccess()V
    .locals 2

    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d0341

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d0342

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d0340

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[IccNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v10, 0x7f0d0330

    const/4 v12, 0x0

    const/16 v11, 0x8

    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    if-eqz v7, :cond_3

    const v7, 0x7f0400e6

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    :goto_0
    const-string/jumbo v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mSimId:I

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    const v7, 0x7f10027c

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f100286

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f10027e

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f10027f

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f100280

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v7, 0x7f10027d

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryLabel:Landroid/widget/TextView;

    iget-boolean v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    if-eqz v7, :cond_5

    const v7, 0x7f0d0d8d

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f0d0d8e

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v7, 0x7f100281

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    const-string/jumbo v7, "disable_enter_nck"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_SupportRemoteSIMunlock"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_0
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_3
    const v7, 0x7f10027b

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const v7, 0x7f100282

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    const-string/jumbo v7, "disable_enter_nck"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_SupportRemoteSIMunlock"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_1
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    const v7, 0x7f100283

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "sim_ndp_dismiss_text"

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Phone_DisableQuitNetworkLockByManual"

    invoke-virtual {v7, v8, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_SupportRemoteSIMunlock"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const v8, 0x7f0d0339

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    :cond_2
    :goto_5
    const v7, 0x7f100284

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const v7, 0x7f100285

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->updatePanel()V

    return-void

    :cond_3
    const v7, 0x7f0400e5

    invoke-virtual {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v7, "disable_enter_nck"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0d07f2

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_SupportRemoteSIMunlock"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f0d0334

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f0d0335

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v7, "add_label_for_simlock"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "InvalidSIM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Phone_AddLabelForSimLock"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d07f3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    iget v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    const v7, 0x7f0d0332

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigPolicyForNetworkLockFreeze"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    invoke-direct {p0, v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getSimLockInfo(I)V

    goto/16 :goto_2

    :cond_9
    iget v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mLockType:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_a

    const v7, 0x7f0d0333

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_b
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Landroid/text/Spannable;

    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-interface {v5, v7, v12, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_3

    :cond_d
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_e
    iget-object v7, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public updatePanel()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isVzwOperator:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f10027c

    invoke-virtual {p0, v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v1, v2, :cond_1

    const v2, 0x7f0d0330

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v1, v2, :cond_2

    const v2, 0x7f0d0332

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v1, v2, :cond_3

    const v2, 0x7f0d0333

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0d0331

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
