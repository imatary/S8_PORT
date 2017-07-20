.class public Lcom/android/phone/EmergencyDialer;
.super Landroid/app/Activity;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyDialer$1;,
        Lcom/android/phone/EmergencyDialer$2;,
        Lcom/android/phone/EmergencyDialer$3;,
        Lcom/android/phone/EmergencyDialer$4;,
        Lcom/android/phone/EmergencyDialer$5;,
        Lcom/android/phone/EmergencyDialer$ActionModeCallback;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

.field private static final DIALER_KEYS:[I

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static setupFinished:Ljava/lang/String;


# instance fields
.field private HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

.field private ONE_HAND_DIRECTION:Ljava/lang/String;

.field private endPaddingAnimator:Landroid/animation/ValueAnimator;

.field private isLostPhoneLock:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAdditionalButtons:Landroid/view/View;

.field private mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

.field private mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBeforeNumber911:Z

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mClearedByCode:Z

.field private mCurrentRepeatCount:I

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field public mDeleteModeFromMenu:Z

.field private mDialButton:Landroid/view/View;

.field private mDialButtonSim1:Landroid/view/View;

.field private mDialButtonSim2:Landroid/view/View;

.field private mDialSplit:Landroid/view/View;

.field private mDialpadContainer:Landroid/view/View;

.field private mDialpadView:Landroid/view/View;

.field public mDigits:Landroid/widget/EditText;

.field private mDoNotSendExitDialer:Z

.field private mDummyList:Landroid/widget/ListView;

.field private mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsOnehandOptionRightForAni:Z

.field private mIsServiceJustConnected:Z

.field public mKeyStringHandler:Landroid/os/Handler;

.field private mLastNumber:Ljava/lang/String;

.field private mLeftArrow:Landroid/view/View;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileKeyboardCovered:Z

.field private mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

.field private mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

.field private mOnehandEnabledObserver:Landroid/database/ContentObserver;

.field private mParserServiceConnection:Landroid/content/ServiceConnection;

.field private mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPreviousRepeatCount:I

.field private mReceiveMessenger:Landroid/os/Messenger;

.field private mRightArrow:Landroid/view/View;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field public mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private startPaddingAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/EmergencyDialer;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/EmergencyDialer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/EmergencyDialer;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/EmergencyDialer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/EmergencyDialer;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/EmergencyDialer;)Landroid/app/StatusBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/EmergencyDialer;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private static synthetic -getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/EmergencyDialer;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/EmergencyDialer;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/phone/EmergencyDialer;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/phone/EmergencyDialer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/EmergencyDialer;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/phone/EmergencyDialer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/EmergencyDialer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->mIsServiceJustConnected:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/EmergencyDialer;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/phone/EmergencyDialer;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/EmergencyDialer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/EmergencyDialer;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getCheckedCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/EmergencyDialer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->recreateEmergencyDialer()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/EmergencyDialer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/EmergencyDialer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->setEndMarginOfDialpadContainer(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/EmergencyDialer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->setStartMarginOfDialpadContainer(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSide()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f1000c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1000b6
        0x7f1000b8
        0x7f1000ba
        0x7f1000bc
        0x7f1000be
        0x7f1000c0
        0x7f1000c2
        0x7f1000c4
        0x7f1000c6
        0x7f1000c8
        0x7f1000ca
        0x7f1000cc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    const-string/jumbo v0, "onehand_direction"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    const-string/jumbo v0, "hand_adaptable_operation"

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->HAND_ADAPTABLE_OPERATION:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mIsServiceJustConnected:Z

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mBeforeNumber911:Z

    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDoNotSendExitDialer:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/EmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$1;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mKeyStringHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/EmergencyDialer$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$2;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mParserServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mKeyStringHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mReceiveMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/phone/EmergencyDialer$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyDialer$3;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/EmergencyDialer$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$4;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/EmergencyDialer$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$5;-><init>(Lcom/android/phone/EmergencyDialer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private attemptConnectToHWTestMode(Landroid/text/Editable;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attemptConnectToHWTestMode keystring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string/jumbo v1, "*#0*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "zhangning The keystring is *#0*#, run connectServiceToDRParser!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->connectServiceToDRParser(Landroid/text/Editable;)V

    :cond_1
    return-void
.end method

.method private checkAdvancedEmergencyNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "checkAdvancedEmergencyNumber(), secondOnePressed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mBeforeNumber911:Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    const-string/jumbo v1, "secondOnePressed"

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCallThread(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mBeforeNumber911:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "checkAdvancedEmergencyNumber, endCall"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    const-string/jumbo v1, "exitDialer"

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCallThread(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mBeforeNumber911:Z

    goto :goto_0
.end method

.method private checkKeyString(Landroid/text/Editable;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "*#15987#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "*#159874#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "*#35789#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "*#0283#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendKeyString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    :cond_2
    return-void
.end method

.method private connectServiceToDRParser(Landroid/text/Editable;)V
    .locals 3

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->mIsServiceJustConnected:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->connectToParsingService()V

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "stripSeparators(input.toString()) is null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private connectToParsingService()V
    .locals 4

    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "connectToParsingService"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.android.app.parser"

    const-string/jumbo v3, "com.sec.android.app.parser.ParseService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mParserServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/EmergencyDialer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertToView(I)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertToView, keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private convertToViewForMobilekeypad(I)Landroid/view/View;
    .locals 3

    const-string/jumbo v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "convertToViewForMobilekeypad, keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_1
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_2
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_3
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_4
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_5
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_6
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_7
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_8
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_9
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_a
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_b
    sget-object v0, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_c
        0x23 -> :sswitch_b
        0x2a -> :sswitch_a
        0x2b -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
    .end sparse-switch
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private createErrorMessage(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x7f0d0479

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0d0477

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const v5, 0x7f0d0476

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/EmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v3, v0}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    return-object v2

    :cond_3
    const v4, 0x7f0d0478

    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private disableHovering(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    return-void
.end method

.method private disconnectParsingService()V
    .locals 3

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "disconnectParsingService"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mParserServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mParserServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.android.app.parser"

    const-string/jumbo v2, "com.sec.android.app.parser.ParseService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private displayToast(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getCheckedCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v3, v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private handleMobileKeyboardConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private inflateEmergencyDialer()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isOnehandModeOn()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_8

    :cond_0
    const v3, 0x7f040058

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    :goto_1
    const v3, 0x7f1000df

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLongClickable(Z)V

    const-string/jumbo v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setDigitsTypeface()V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->maybeAddNumberFormatting()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->initEmergencyContactsItem()V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->restoreContainerState()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v3, v6}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->restoreContainerState()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3, v6}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    :cond_4
    const v3, 0x7f1000b6

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupKeypad()V

    :cond_5
    const-string/jumbo v3, "support_mobile_keyboard"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->setupMobileKeyboard()V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateAdditionalButtons()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateMultiChoiceMode()V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isPenMultiWindow()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f040059

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->setContentView(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2
.end method

.method private initEmergencyContactsItem()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "initEmergencyContactsItem() : Disable.. for kids mode"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKnoxOnlyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "initEmergencyContactsItem() : Disable.. for KnoxKiosk mode"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "initEmergencyContactsItem() : Disable.. for SD mode"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-nez v1, :cond_3

    const-string/jumbo v1, "emergency_contact_sync_contact"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-nez v1, :cond_4

    const-string/jumbo v1, "emergency_contact_sync_contact"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f100119

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "mSyncGroupItemContainer inflate done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/EmergencyDialer$7;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyDialer$7;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    const v1, 0x7f100118

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v1, p0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setEmergencyDialer(Lcom/android/phone/EmergencyDialer;)V

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "mEmergencyItemContainer inflate done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "support_mobile_keyboard"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1
.end method

.method private final isNonSeparator(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x2a

    if-eq p1, v2, :cond_0

    const/16 v2, 0x23

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2c

    if-eq p1, v2, :cond_0

    const/16 v2, 0x61

    if-lt p1, v2, :cond_2

    const/16 v2, 0x7a

    if-le p1, v2, :cond_0

    :cond_2
    const/16 v2, 0x41

    if-lt p1, v2, :cond_3

    const/16 v2, 0x5a

    if-le p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isPenMultiWindow()Z
    .locals 1

    const-string/jumbo v0, "support_penwindow_callscreen"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSetupWizardFinished()Z
    .locals 4

    sget-object v1, Lcom/android/phone/EmergencyDialer;->setupFinished:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/EmergencyDialer;->setupFinished:Ljava/lang/String;

    const-string/jumbo v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    const-string/jumbo v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSetupWizardFinished : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "shared_device_status"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-virtual {v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->checkAdvancedEmergencyNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private launchAdditionalButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchEmergencyCallList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchMyEmergencyDetail()V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    goto :goto_0
.end method

.method private launchEmergencyCallList()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method private launchMyEmergencyDetail()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.contacts.action.SHOW_MY_EMERGENCY_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "fromEmergencyDialer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v3, "MYEC"

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    const v1, 0x7f0d0211

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d028a

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCreateLostPhone()V
    .locals 5

    const-string/jumbo v1, "lost_phone_lock"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    iget-boolean v1, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multi_window_enabled"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "EmergencyDialer"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private onPauseLostPhone()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "lost_phone_lock"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v1, 0xbb

    invoke-direct {p0, v1, v2}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v1, "EmergencyDialer"

    const-string/jumbo v2, "on Pause - lost phone lock - reenabling status bar"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onResumeLostPhone()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->disableStatusBarLostPhone(Landroid/app/StatusBarManager;)V

    :cond_0
    return-void
.end method

.method private placeCall(I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/phone/EmergencyDialer;->setCategoryOf119(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p0, v6, p1}, Lcom/android/phone/EmergencyDialer;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v2

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->isSwcEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmergencyNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / isSwcEmergencyNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v9, p0, Lcom/android/phone/EmergencyDialer;->mDoNotSendExitDialer:Z

    :cond_0
    if-nez v2, :cond_1

    if-eqz v4, :cond_b

    :cond_1
    const-string/jumbo v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "placing call to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v4, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "telecom"

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    if-eqz p1, :cond_2

    if-ne p1, v9, :cond_3

    :cond_2
    const-string/jumbo v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const-string/jumbo v6, "tel"

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v6, v7, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "SKTRADDialOption"

    const-string/jumbo v7, "abroad"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "support_bixby"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "EmergencyCallSend"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->hideBixbyFullUI()V

    const-string/jumbo v6, "CallByBixby"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    invoke-static {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const-string/jumbo v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v6, :cond_9

    :cond_5
    const-string/jumbo v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->clear()V

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->clearFocus()V

    return-void

    :cond_7
    const/16 v6, 0x1a

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    return-void

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSharedDeviceEnabled()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_a
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/phone/EmergencyDialer$6;

    invoke-direct {v7, p0}, Lcom/android/phone/EmergencyDialer$6;-><init>(Lcom/android/phone/EmergencyDialer;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_b
    const-string/jumbo v6, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rejecting bad requested number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/EmergencyDialer;->displayToast(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private recreateEmergencyDialer()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->reset()V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->reset()V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->inflateEmergencyDialer()V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2, v4}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->makeEmergencyContactQuery()V

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2, v4}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->makeEmergencyContactQuery()V

    :cond_8
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "interactionarea_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "any_screen_running"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EmergencyDialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, p1}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private sendKeyString(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "EmergencyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendKeyString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const-string/jumbo v2, "*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEYSTRING"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mIsServiceJustConnected:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "USERDATA"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "USERDATA"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setCategoryOf119(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "119"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "setCategoryOf119 : ril.skt119Cat=0x04"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ril.skt119Cat"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDigitsTypeface()V
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getDigitsTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setEndMarginOfDialpadContainer(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setOnListener(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method private setStartMarginOfDialpadContainer(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupKeypad()V
    .locals 6

    sget-object v4, Lcom/android/phone/EmergencyDialer;->DIALER_KEYS:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v0, v4, v3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->setOnListener(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->disableHovering(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v3, 0x7f1000ca

    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setupMobileKeyboard()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/EmergencyDialer$11;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$11;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDialpadView:Landroid/view/View;

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMobileKeyboardCovered:Z

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mMobileKeyboardCovered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->handleMobileKeyboardConnected()V

    :cond_0
    return-void
.end method

.method private shouldDisplayTwoDialButton()Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->checkDualSimReady()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getInsertedSimCard()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldDisplayTwoDialButton, isDualSimReady : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldDisplayTwoDialButton, insertedSimNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldDisplayTwoDialButton, airplaneModeOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "EnableSip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/EmergencyDialer$12;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyDialer$12;-><init>(Lcom/android/phone/EmergencyDialer;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unregisterContentObserver()V
    .locals 1

    const-string/jumbo v0, "support_onehand_operation"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mOnehandAnyScreenEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateAdditionalButtons()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->updateAdditionalButtons(Z)V

    return-void
.end method

.method private updateAdditionalButtons(Z)V
    .locals 13

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v9, 0x0

    const v8, 0x7f1000cd

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const-string/jumbo v8, "carrier_config"

    invoke-virtual {p0, v8}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string/jumbo v8, "show_onscreen_dial_button_bool"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "EmergencyDialer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "KEY_SHOW_ONSCREEN_DIAL_BUTTON_BOOL : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "show_onscreen_dial_button_bool"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v10, 0x7f1000ce

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isOnehandModeOn()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    const v10, 0x7f02013f

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    const v10, 0x7f0d0cd6

    invoke-virtual {p0, v10}, Lcom/android/phone/EmergencyDialer;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialButtons()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDeleteButton()V

    const-string/jumbo v8, "emergency_contacts"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isEncryptionMode()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    const-string/jumbo v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c01df

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v8, v7, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    iget-boolean v8, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v8, :cond_2

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    const v10, 0x7f02013b

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKnoxOnlyMode()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_5
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "emergency_dialer_expandable_dial"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x40000000    # 2.0f

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->checkDualSimReady()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_8

    const/16 v8, 0xa

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_8
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c0079

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v8, v6, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    move v8, v9

    :goto_4
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {v2, v9}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x4

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    iput-object v10, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    goto/16 :goto_2
.end method

.method private updateDeleteButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private updateDialAndDeleteButtonStateEnabledAttr()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDialButtons()V
    .locals 7

    const/16 v6, 0x66

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f1000cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo v1, "emergency_dialer_button_rounded_rectangle"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isOnehandModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f02007b

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f1000d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f1000d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mAdditionalButtons:Landroid/view/View;

    const v2, 0x7f1000d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->shouldDisplayTwoDialButton()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-static {v2, v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    const v0, 0x7f02007d

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialButtonSim2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialSplit:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDialButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateMultiChoiceMode()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f100051

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    new-instance v0, Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EmergencyDialer$ActionModeCallback;-><init>(Lcom/android/phone/EmergencyDialer;Lcom/android/phone/EmergencyDialer$ActionModeCallback;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mModeCallback:Lcom/android/phone/EmergencyDialer$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    :cond_1
    return-void
.end method

.method private updateOneHandSide()V
    .locals 10

    const v9, 0x7f0c0065

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v2, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    move v6, v5

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    goto :goto_3
.end method

.method private updateOneHandSideAnimate()V
    .locals 12

    const/4 v11, 0x2

    const/4 v6, 0x0

    const v10, 0x7f0c0066

    const v9, 0x7f0c0065

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/EmergencyDialer;->mIsOnehandOptionRightForAni:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/phone/EmergencyDialer;->mIsOnehandOptionRightForAni:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v0, v4, v7

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    :goto_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v4, v11, [I

    aput v1, v4, v6

    aput v0, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->startPaddingAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->startPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/phone/EmergencyDialer$8;

    invoke-direct {v7, p0}, Lcom/android/phone/EmergencyDialer$8;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v11, [I

    aput v3, v4, v6

    aput v2, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/EmergencyDialer;->endPaddingAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->endPaddingAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/phone/EmergencyDialer$9;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyDialer$9;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->startPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->endPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/phone/EmergencyDialer$10;

    invoke-direct {v5, p0}, Lcom/android/phone/EmergencyDialer$10;-><init>(Lcom/android/phone/EmergencyDialer;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mArrowChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    move v4, v6

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v1, v4, v7

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    goto/16 :goto_1
.end method

.method private updateTtsSpans()V
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/TtsSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateTtsSpans()V

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->checkKeyString(Landroid/text/Editable;)V

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->attemptConnectToHWTestMode(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getDeleteModeFromMenu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return v0
.end method

.method public getDummyListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;I)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz p2, :cond_1

    invoke-static {p2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "placing call to simNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / isEmergencyNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getCurrentNetworkPhoneId()I

    move-result v0

    invoke-static {v0, v4}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->selectSimForEmergency(IZ)I

    move-result v2

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "placing simIdForEmergency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / currentSimId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v1

    if-eq v2, v0, :cond_0

    move p2, v2

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "placing simIdForEmergency simNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v3

    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method public isSwcEmergencyNumber(Ljava/lang/String;)Z
    .locals 11

    const/4 v8, 0x3

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v7, "CscFeature_VoiceCall_DialEmergNumAsNormalCall"

    invoke-virtual {v5, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string/jumbo v5, "432"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v2, "110,115,125"

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "EmergencyDialer"

    const-string/jumbo v7, "swc emergency number is null"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string/jumbo v5, "EmergencyDialer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "eccListForSwc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v0, v1, v5

    const-string/jumbo v8, "EmergencyDialer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "eccListForSwc - ecc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v5, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "eccListForSwc - number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "EmergencyDialer"

    const-string/jumbo v7, "swc emergency number is none"

    invoke-static {v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method protected maybeAddNumberFormatting()V
    .locals 0

    return-void
.end method

.method public notifyCheckChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onBackPressed()..."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->reset()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-void

    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_6
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_7
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_8
    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_9
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_c
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return-void

    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    return-void

    :sswitch_e
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    return-void

    :sswitch_f
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->performHapticFeedback(I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    return-void

    :sswitch_10
    return-void

    :sswitch_11
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->launchAdditionalButton()V

    return-void

    :sswitch_12
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSideAnimate()V

    return-void

    :sswitch_13
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->ONE_HAND_DIRECTION:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSideAnimate()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1000b6 -> :sswitch_0
        0x7f1000b8 -> :sswitch_1
        0x7f1000ba -> :sswitch_2
        0x7f1000bc -> :sswitch_3
        0x7f1000be -> :sswitch_4
        0x7f1000c0 -> :sswitch_5
        0x7f1000c2 -> :sswitch_6
        0x7f1000c4 -> :sswitch_7
        0x7f1000c6 -> :sswitch_8
        0x7f1000c8 -> :sswitch_b
        0x7f1000ca -> :sswitch_9
        0x7f1000cc -> :sswitch_a
        0x7f1000ce -> :sswitch_11
        0x7f1000cf -> :sswitch_d
        0x7f1000d0 -> :sswitch_e
        0x7f1000d2 -> :sswitch_f
        0x7f1000d3 -> :sswitch_c
        0x7f1000df -> :sswitch_10
        0x7f10011c -> :sswitch_13
        0x7f10011e -> :sswitch_12
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/16 v12, 0x2000

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v9, "EmergencyDialer"

    const-string/jumbo v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-virtual {v9}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    const-string/jumbo v10, "startDialer"

    invoke-virtual {v9, v10}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCallThread(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v12, v12}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    const-string/jumbo v9, "tablet_device"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const-string/jumbo v9, "persist.sys.setupwizard"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/phone/EmergencyDialer;->setupFinished:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v9, "tablet_device"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_3
    const-string/jumbo v9, "statusbar"

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x80000

    or-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "intent.stop.app-in-app"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onCreateLostPhone()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->inflateEmergencyDialer()V

    const-string/jumbo v9, "carrier_config"

    invoke-virtual {p0, v9}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz p1, :cond_4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string/jumbo v9, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {v9, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v10, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_6

    :try_start_2
    new-instance v9, Landroid/media/ToneGenerator;

    const/4 v11, 0x1

    const/16 v12, 0x2d

    invoke-direct {v9, v11, v12}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_1
    monitor-exit v10

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "lost_phone_lock"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "com.android.phone.Emergencydialer.LOST_PHONE_UNLOCK"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_7
    const/16 v9, 0x3e7

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v9, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v6}, Lcom/android/phone/EmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->registerContentObserver()V

    const-string/jumbo v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mWindowManager:Landroid/view/IWindowManager;

    const-string/jumbo v9, "EmergencyDialer"

    const-string/jumbo v10, "onCreate exit"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v9, "EmergencyDialer"

    const-string/jumbo v10, "maybe this is dex mode"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_3
    const-string/jumbo v9, "EmergencyDialer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception caught while creating local tone generator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0473

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02ca

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mPersonaManagerService:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKnoxOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-virtual {v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mDoNotSendExitDialer:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy(), mDoNotSendExitDialer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDoNotSendExitDialer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    const-string/jumbo v1, "exitDialer"

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCallThread(Ljava/lang/String;)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mDoNotSendExitDialer:Z

    iput-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mBeforeNumber911:Z

    :cond_1
    const-string/jumbo v0, "bike_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvent(IZ)Z

    :cond_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->unregisterContentObserver()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->disconnectParsingService()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->removeTask()V

    :cond_4
    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onDestroy exit"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    const-string/jumbo v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    if-nez v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyDialer;->convertToView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->onClick(Landroid/view/View;)V

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey - isClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v6

    :pswitch_0
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    return v6

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->onLongClick(Landroid/view/View;)Z

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey - isLongPress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "support_mobile_keyboard"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    if-nez v3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    iget v3, p0, Lcom/android/phone/EmergencyDialer;->mCurrentRepeatCount:I

    iput v3, p0, Lcom/android/phone/EmergencyDialer;->mPreviousRepeatCount:I

    invoke-direct {p0, p2}, Lcom/android/phone/EmergencyDialer;->convertToViewForMobilekeypad(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->onClick(Landroid/view/View;)V

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey - isClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return v6

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->onLongClick(Landroid/view/View;)Z

    const-string/jumbo v3, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKey - isLongPress : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    return v4

    :pswitch_data_0
    .packed-switch 0x7f1000df
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->finish()V

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    return v2

    :sswitch_2
    const-string/jumbo v0, "support_cancel_key_to_use_delete_digits"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "SUPPORT_CANCEL_KEY_TO_USE_DELETE_DIGITS"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_0

    return v2

    :sswitch_3
    iget-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->isLostPhoneLock:Z

    if-eqz v0, :cond_0

    return v2

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x1b -> :sswitch_3
        0x43 -> :sswitch_1
        0x50 -> :sswitch_3
        0xa8 -> :sswitch_3
        0xa9 -> :sswitch_3
        0x40a -> :sswitch_3
        0x40e -> :sswitch_3
        0x40f -> :sswitch_3
        0x410 -> :sswitch_3
        0x411 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return v1

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "play_emergency_dialer_key_tone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyDialer;->playToneByKey(I)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    return v2

    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->keyPressed(I)V

    return v2

    :sswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f1000b6 -> :sswitch_2
        0x7f1000b8 -> :sswitch_2
        0x7f1000ba -> :sswitch_2
        0x7f1000bc -> :sswitch_2
        0x7f1000be -> :sswitch_2
        0x7f1000c0 -> :sswitch_2
        0x7f1000c2 -> :sswitch_2
        0x7f1000c4 -> :sswitch_2
        0x7f1000c6 -> :sswitch_2
        0x7f1000ca -> :sswitch_1
        0x7f1000d3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyDialer;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    iput-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100120 -> :sswitch_3
        0x7f1001e3 -> :sswitch_2
        0x7f1002e3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "reenabling status bar and closing the dialer"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onPauseLostPhone()V

    const-string/jumbo v0, "ota_mode_disable_expand"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvents(Z)V

    :cond_0
    const-string/jumbo v0, "emergency_dialer_tones"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->storeContainerState()V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->storeContainerState()V

    :cond_4
    const-string/jumbo v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v3}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->sendDualmodeSettingBroadcast(Landroid/content/Context;I)V

    :cond_5
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "EmergencyDialer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v2, p0, Lcom/android/phone/EmergencyDialer;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-nez p1, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/EmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const v8, 0x7f1001e3

    const v7, 0x7f100120

    const v6, 0x7f1002e3

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isKidsHomeMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/android/phone/EmergencyDialer;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ScreenTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getEmergencyContactExists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_7

    move v2, v3

    :goto_3
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v5, "EmergencyDialer"

    const-string/jumbo v6, "onResume"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "bike_mode"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "isBikeMode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v5, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBikeMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v4, :cond_0

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvents(Z)V

    :cond_0
    const-string/jumbo v5, "ota_mode_disable_expand"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyDialer;->requestSystemKeyEvents(Z)V

    :cond_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isOnehandModeOn()Z

    move-result v2

    const-string/jumbo v5, "support_onehand_operation"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    const v5, 0x7f10011e

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    const v5, 0x7f10011c

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    const v5, 0x7f10011d

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/EmergencyDialer;->mDialpadContainer:Landroid/view/View;

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mRightArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mLeftArrow:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateOneHandSide()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "dtmf_tone"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    iget-object v5, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_6

    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/4 v6, 0x1

    const/16 v7, 0x2d

    invoke-direct {v3, v6, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_0
    monitor-exit v5

    const-string/jumbo v3, "EmergencyDialer"

    const-string/jumbo v5, "disabling status bar, set to long timeout"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v3, "emregency_dialer_home_recent_block"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x1210000

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->updateDialAndDeleteButtonStateEnabledAttr()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->onResumeLostPhone()V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v3, v8}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_9
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->makeEmergencyContactQuery()V

    :cond_a
    :goto_1
    const-string/jumbo v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {p0, v4}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->sendDualmodeSettingBroadcast(Landroid/content/Context;I)V

    :cond_b
    const-string/jumbo v3, "support_mobile_keyboard"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->showSoftInput()V

    :cond_c
    const-string/jumbo v3, "support_bixby"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/phone/ia/EmergencyDialerStateListener;

    invoke-direct {v3, p0}, Lcom/android/phone/ia/EmergencyDialerStateListener;-><init>(Lcom/android/phone/EmergencyDialer;)V

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v4, p0, Lcom/android/phone/EmergencyDialer;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "EmergencyDialer"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isQueryingContactDB()Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_d
    :goto_2
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v4, "EmergencyDialer"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_e
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "EmergencyDialer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    :cond_f
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-direct {p0}, Lcom/android/phone/EmergencyDialer;->isSetupWizardFinished()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3, v8}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    :cond_11
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->restoreContainerState()V

    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->makeEmergencyContactQuery()V

    goto/16 :goto_1

    :cond_12
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/EmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/utils/FileWriteThread;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/phone/utils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/utils/FileWriteThread;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/utils/FileWriteThread;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/phone/utils/FileWriteThread;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/phone/utils/FileWriteThread;->start()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "emergency_dialer_haptic_feedback_enabled"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xc369

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/phone/EmergencyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return v3
.end method

.method public placeCall()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/phone/EmergencyDialer;->placeCall(I)V

    return-void
.end method

.method playTone(I)V
    .locals 6

    iget-boolean v2, p0, Lcom/android/phone/EmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EmergencyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_3

    const-string/jumbo v2, "EmergencyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x5a

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method playToneByKey(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyDialer;->playTone(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public setDeleteModeFromMenu(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/EmergencyDialer;->mDeleteModeFromMenu:Z

    return-void
.end method

.method public setMultiMode(Z)V
    .locals 2

    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mEmergencyItemContainer:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyDialer;->mClearedByCode:Z

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->semFinishMultiChoiceMode()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer;->mDummyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    goto :goto_0
.end method

.method public updateCheck()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    return-void
.end method
