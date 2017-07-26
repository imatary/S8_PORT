.class public Lcom/android/phone/callsettings/KddiCallPrevention;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KddiCallPrevention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/KddiCallPrevention$1;,
        Lcom/android/phone/callsettings/KddiCallPrevention$2;,
        Lcom/android/phone/callsettings/KddiCallPrevention$3;,
        Lcom/android/phone/callsettings/KddiCallPrevention$4;,
        Lcom/android/phone/callsettings/KddiCallPrevention$5;,
        Lcom/android/phone/callsettings/KddiCallPrevention$AppState;,
        Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final FROM:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field LastCallButton:Landroid/widget/Button;

.field final MATCH_EQUAL:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field final defaultIndex:I

.field editBox:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mActivity:Landroid/app/Activity;

.field private mAppState:Lcom/android/phone/callsettings/KddiCallPrevention$AppState;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field mBaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCBVisible:Z

.field private mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

.field public mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDefaultName:Ljava/lang/String;

.field mErrorText:Landroid/widget/TextView;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field private mListView:Landroid/widget/ListView;

.field private mMatchCriteria:I

.field mModList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mToast:Landroid/widget/Toast;

.field private mUnLock:Z

.field private mUpdateLastCall:Z

.field private mUpdateScreen:Z

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/KddiCallPrevention;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/KddiCallPrevention;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectAdapter:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/phone/callsettings/KddiCBarring;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mDefaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/KddiCallPrevention;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/KddiCallPrevention;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/KddiCallPrevention;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/KddiCallPrevention;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/KddiCallPrevention;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/KddiCallPrevention;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/KddiCallPrevention;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->composingData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/KddiCallPrevention;->deleteFromModList(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->makeBaseData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->makeScreen()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/KddiCallPrevention;->modifyModList(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->updateListICB(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-class v0, Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "reject_number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_checked"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_match"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mDefaultName:Ljava/lang/String;

    iput v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mFirstVisibleItem:I

    iput-boolean v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsOutgoing:Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateScreen:Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsForeground:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->MATCH_EQUAL:I

    iput v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->defaultIndex:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->QUERY_COMPLETE:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBVisible:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$1;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$2;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$3;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention$3;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$4;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$5;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mNetworkServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method private addToModList(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "addToModList iCBNumber is nulll "

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    const-string/jumbo v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+81"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addToModList iCBNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DBL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    const-string/jumbo v4, "T"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addToModList timeStamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "True"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;->reject_num:Ljava/lang/String;

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAlreadyInUse itemNum :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " number :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private composingData()Ljava/lang/String;
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "composingData "

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "composingData delete last call "

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    const-string/jumbo v3, "emptyvalue"

    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_2

    :cond_1
    const-string/jumbo v3, "composingData mModList is null "

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    return-object v5

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "composingData result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private dataParsing(Ljava/lang/String;)V
    .locals 20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataParsing data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v8, "[<>]+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    aget-object v15, v16, v17

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    array-length v3, v12

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v11, v12, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "item : "

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string/jumbo v3, "anonymous-call-rejection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "unexpacted token : anonymous-call-rejection"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    aget-object v2, v12, v2

    const-string/jumbo v3, "DBL"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "_"

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "Z"

    const-string/jumbo v3, ""

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "Asia/Tokyo"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mICBDateTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string/jumbo v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v2, v13

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    const/4 v2, 0x1

    aget-object v2, v13, v2

    const-string/jumbo v3, "-"

    const-string/jumbo v7, ":"

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v13, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/callsettings/KddiCallPrevention;->getNumberFromData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v2, 0x2

    aget-object v2, v12, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x2

    aget-object v2, v12, v2

    const-string/jumbo v3, "True"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataParsing data activate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "+81"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "+81"

    const-string/jumbo v3, "0"

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v2, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const-string/jumbo v2, "ParseException (String -> Date)"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Date format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method private deleteFromModList(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "deleteFromModList selectedNum is nulll "

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->getNumberFromData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "+81"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "+81"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getNumberFromData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v7

    aget-object v5, v3, v7

    const-string/jumbo v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0d0bc7

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNumberFromData address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    aget-object v5, v3, v7

    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v3, v7

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    aget-object v5, v3, v7

    const-string/jumbo v6, "$"

    const-string/jumbo v7, ","

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v8

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v8

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, v8

    const-string/jumbo v6, "sip:|tel:"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/KddiCallPrevention$13;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$13;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/KddiCallPrevention$14;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$14;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeBaseData(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v3, "makeBaseData "

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    const-string/jumbo v0, "[<>]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeBaseData token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private makeScreen()V
    .locals 3

    const-string/jumbo v0, "makeScreen"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectAdapter:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectAdapter:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectAdapter:Lcom/android/phone/callsettings/KddiCallPrevention$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->isAvailableAddbutton()V

    return-void
.end method

.method private modifyModList(Ljava/lang/String;IZ)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "modifyModList selectedNum is nulll "

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/KddiCallPrevention;->getNumberFromData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "+81"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "+81"

    const-string/jumbo v7, "0"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_2

    const-string/jumbo v6, "True"

    aput-object v6, v2, v8

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mModList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string/jumbo v6, "False"

    aput-object v6, v2, v8

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private updateListICB(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "updateListICB "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/KddiCallPrevention;->dataParsing(Ljava/lang/String;)V

    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    const v2, 0x7f0d0bb6

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "separate_call_reject"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d072d

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v1, "call_block_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d072c

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkErrorText()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->showErrorText(Z)V

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "editText length is zero!"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->showErrorText(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d05db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->showErrorText(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/KddiCallPrevention;->showErrorText(Z)V

    goto :goto_0
.end method

.method public clickSaveBtn()V
    .locals 6

    const/4 v5, 0x1

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "clickSaveBtn"

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->addToModList(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->composingData()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUnLock:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "composingData data error "

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->makeScreen()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    const/16 v4, 0x9

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "illegal transition from NETWORK_ERROR"

    invoke-static {v3, v4, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableAddbutton()V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method isUnknownNumber(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v2, "-1"

    const-string/jumbo v1, "-2"

    const-string/jumbo v0, "-3"

    const/4 v3, 0x0

    const-string/jumbo v4, "-2"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "-3"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/KddiCallPrevention$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$12;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :pswitch_0
    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "NUMBER"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "output is null"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/KddiCallPrevention;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unknwon number from log"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_4

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onActivityResult: cancelled."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreate "

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "autoreject_maxcount"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->autoreject_maxcount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0500

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mDefaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mToast:Landroid/widget/Toast;

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCallPrevention$AppState;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mAppState:Lcom/android/phone/callsettings/KddiCallPrevention$AppState;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "isOutgoing"

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsOutgoing:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArgument : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsOutgoing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsOutgoing:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentURI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentURI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/KddiCallPrevention;->setHasOptionsMenu(Z)V

    new-instance v3, Lcom/android/phone/callsettings/KddiCBarring;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/phone/callsettings/KddiCBarring;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/KddiCBarring;->registerCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentURI:Landroid/net/Uri;

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "illegal transition"

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    const v3, 0x7f04007a

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/KddiCallPrevention;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v3, 0x7f100061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    const v3, 0x7f100171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mErrorText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreateView() - editBox is null !!"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/KddiCallPrevention$6;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$6;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/KddiCallPrevention$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$7;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/KddiCallPrevention$8;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$8;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v3, 0x7f10006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->AddButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/callsettings/KddiCallPrevention$9;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$9;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->isAvailableAddbutton()V

    const v3, 0x7f100172

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->LastCallButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->LastCallButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/callsettings/KddiCallPrevention$10;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$10;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "UPDATE_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->update_MODE:Z

    iget-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->update_MODE:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "UPDATE_ID"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->update_ID:I

    const-string/jumbo v3, "MATCH_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->match_MODE:I

    const-string/jumbo v3, "SELECT_NUMBER"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->select_NUM:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->match_MODE:I

    iput v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mMatchCriteria:I

    iget v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->match_MODE:I

    iput v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->previous_match_MODE:I

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->select_NUM:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->previous_NUM:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->select_NUM:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->select_NUM:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->select_NUM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/KddiCallPrevention;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->makeScreen()V

    return-object v2

    :cond_2
    iput v5, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mMatchCriteria:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/KddiCBarring;->deregisterCBarringMessageListener(Lcom/android/phone/callsettings/CBarringMessageListener;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsForeground:Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume "

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v3, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mIsForeground:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneGlobals;->setNeedDataFromNetwork(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/KddiCallPrevention$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/KddiCallPrevention$11;-><init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/phone/callsettings/KddiCBarring;->setCommad(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateScreen:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->makeScreen()V

    iget-object v1, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mFirstVisibleItem:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "illegal transition"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v6, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mUpdateLastCall:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->updateTitleBar()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/phone/callsettings/KddiCallPrevention;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/KddiCallPrevention;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
