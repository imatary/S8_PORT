.class public Lcom/android/phone/callsettings/SecAutoRejectList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecAutoRejectList$1;,
        Lcom/android/phone/callsettings/SecAutoRejectList$2;,
        Lcom/android/phone/callsettings/SecAutoRejectList$3;,
        Lcom/android/phone/callsettings/SecAutoRejectList$6;,
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;,
        Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;,
        Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static mContext:Landroid/content/Context;


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field private final BLOCKED_NUMBER_PROVIDER:Ljava/lang/String;

.field final MATCH_EQUAL:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field category_summary:Landroid/widget/TextView;

.field private contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

.field criteria:Landroid/widget/LinearLayout;

.field criteriaSub:Landroid/widget/TextView;

.field final defaultIndex:I

.field private defaultName:Ljava/lang/String;

.field editBox:Landroid/widget/EditText;

.field private emptyText:Landroid/widget/ScrollView;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCBstate:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field mEmptyDesc:Landroid/widget/TextView;

.field mEmptyDesc2:Landroid/widget/TextView;

.field mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field mErrorText:Landroid/widget/TextView;

.field private mFirstVisibleItem:I

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mIsOutgoing:Z

.field mLableText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mMatchCriteria:I

.field public mMatchCriteriaType:I

.field private mMatchEntry:[Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field mToast:Landroid/widget/Toast;

.field private mUpdateScreen:Z

.field private match_MODE:I

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/SecAutoRejectList;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/SecAutoRejectList;)Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mCBstate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/SecAutoRejectList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/SecAutoRejectList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchEntry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mCBstate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/SecAutoRejectList;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mFirstVisibleItem:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/SecAutoRejectList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/SecAutoRejectList;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/SecAutoRejectList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecAutoRejectList;->sendBlockEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->stopContactQuery()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/high16 v6, 0x4000000

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "reject_number"

    aput-object v1, v0, v3

    const-string/jumbo v1, "reject_checked"

    aput-object v1, v0, v5

    const-string/jumbo v1, "reject_match"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "additional"

    const-string/jumbo v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "excludeProfile"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/callsettings/SecAutoRejectList;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->defaultName:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mFirstVisibleItem:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsOutgoing:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsForeground:Z

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchCriteriaType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->MATCH_EQUAL:I

    iput v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->defaultIndex:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->QUERY_COMPLETE:I

    const-string/jumbo v0, "com.android.providers.blockednumber"

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->BLOCKED_NUMBER_PROVIDER:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mCBstate:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$1;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$2;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectList$3;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList$3;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addAutoRejectNumber(Ljava/lang/String;I)J
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "reject_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "reject_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "reject_match"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-direct {p0, p1, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->sendBlockEvent(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/phone/callsettings/SecAutoRejectList;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/phone/PhoneUtilsCommon;->addMessageBlockNumber(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList;->addNativeBlockNumber(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private drawSecBlockedCategoryItem(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v2, "drawSecBlockedCategoryItem"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    const v2, 0x7f10005e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f100065

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f100067

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->category_summary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateSecBlockedCategory()V

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$22;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$22;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private drawSecUnknownItem(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f0d052e

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "drawSecUnknownItem"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    const v5, 0x7f10004b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f10005e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f10004f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f100065

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    move-object v5, v0

    check-cast v5, Landroid/widget/Switch;

    new-instance v8, Lcom/android/phone/callsettings/SecAutoRejectList$19;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$19;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectList$20;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$20;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/phone/callsettings/SecAutoRejectList$21;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/phone/callsettings/SecAutoRejectList$21;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "unknown_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d0c19

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mCBstate:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mCBstate:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0bd9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "for Unknown, checked = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v1, :cond_1

    move v5, v6

    :goto_1
    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0d0c1a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move v5, v7

    goto :goto_1
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/SecAutoRejectList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f100264

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->emptyText:Landroid/widget/ScrollView;

    const v1, 0x7f100051

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v1, 0x7f100265

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v1, 0x7f100266

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc:Landroid/widget/TextView;

    const v1, 0x7f100267

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->initNoItemAnimation()V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$13;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$14;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$14;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100269

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f10026c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchEntry:[Ljava/lang/String;

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/android/phone/callsettings/SecAutoRejectList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchEntry:[Ljava/lang/String;

    const v3, 0x1090009

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$15;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$15;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v1, 0x7f10026a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteria:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteria:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$16;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$16;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10004d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteriaSub:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteriaSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchEntry:[Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private initNoItemAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectList$17;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$17;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectList$18;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$18;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SecAutoRejectList"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "SecAutoRejectList"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeScreen()V
    .locals 18

    const-string/jumbo v2, "makeScreen"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;Z)V

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v2, "dcm_auto_reject_conditions"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateSecBlockedCategory()V

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AutoRejectNum idx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "checked ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/android/phone/utils/PhoneNumberFormatter;->setPhoneNumberFormatting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v5}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateTitleBar()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->startContactQuery()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->emptyText:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->showInitAnimation()V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private resetAnimation()V
    .locals 4

    const/16 v3, 0x19

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private sendBlockEvent(Ljava/lang/String;Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v4, "support_smart_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SecAutoRejectList"

    const-string/jumbo v5, "Smart call is not supported. so, Do not sendBlockEvent!"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "spam_call_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "SecAutoRejectList"

    const-string/jumbo v5, "Smart call is not On. so, Do not sendBlockEvent!"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v4, "SecAutoRejectList"

    const-string/jumbo v5, "sendBlockEvent phoneNumber is null!"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_2
    const-string/jumbo v4, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBlockEvent phoneNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isBlocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "interaction_type"

    const-string/jumbo v5, "call"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "phone_number"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "is_blocked"

    if-eqz p2, :cond_3

    const-string/jumbo v4, "true"

    :goto_0
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "smart_call"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    const-string/jumbo v4, "content://com.samsung.android.smartcallprovider.directory.provider/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "block_event"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v4, "false"

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showInitAnimation()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->resetAnimation()V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v7}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    new-array v9, v11, [F

    aput v13, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    aput v14, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x14d

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    const-string/jumbo v8, "translationY"

    new-array v9, v11, [F

    aput v13, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    const-string/jumbo v8, "alpha"

    new-array v9, v11, [F

    aput v14, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x14d

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v7}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v0, v7, v10

    aput-object v5, v7, v11

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v1, v7, v10

    aput-object v6, v7, v11

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v3, v7, v10

    aput-object v4, v7, v11

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startContactQuery()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    const-string/jumbo v0, "SecAutoRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->interrupt()V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->contactQueryThread:Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 6

    const/4 v3, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "reject_match"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateSecBlockedCategory()V
    .locals 11

    const v10, 0x7f0d0c2c

    const v9, 0x7f0d02bd

    const v8, 0x7f0d02be

    const/4 v6, 0x0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "unknown_mode_jpn"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v1, v3, 0xf

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "unknown_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "unknown_mode_jpn"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "unknown_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecBlockedCategory, blocked_category_summary : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " unknownModeJpn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " unknownMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "unknown"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "private_num"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->category_summary:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "unknown"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "private_num"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method private updateTitleBar()V
    .locals 2

    const v1, 0x7f0d052b

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "feature_jpn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d052f

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public addContactNumber(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "SecAutoRejectList"

    const-string/jumbo v2, "addContactNumber"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "call_block_number_formatter"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->addAutoRejectNumber(Ljava/lang/String;I)J

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->stopContactQuery()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-direct {p0, p1, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_0
.end method

.method public addNativeBlockNumber(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addNativeBlockNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "content://com.android.phone.callsettings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "blocking_provider_number"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v6, "SecAutoRejectList"

    const-string/jumbo v7, "checkAlreadyInUse : cursor is null"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move-object v4, p1

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->previous_NUM:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->previous_match_MODE:I

    if-ne v6, v3, :cond_4

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_1
    const/4 v0, 0x0

    return v2

    :cond_4
    :try_start_1
    const-string/jumbo v6, "call_block_number_formatter"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    if-ne v6, v3, :cond_2

    const-string/jumbo v6, "SecAutoRejectList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkAlreadyInUse : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", rejectNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v6, "SecAutoRejectList"

    const-string/jumbo v7, "NumberFormatException"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v6
.end method

.method public checkErrorText()Z
    .locals 9

    const/16 v2, 0x64

    const/16 v1, 0x1e

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-nez v3, :cond_0

    return v7

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->showErrorText(Z)V

    const-string/jumbo v1, "SecAutoRejectList"

    const-string/jumbo v2, "editText length is zero!"

    invoke-static {v1, v2, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v7

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->showErrorText(Z)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton(Z)V

    return v7

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d05db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->showErrorText(Z)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton(Z)V

    return v7

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v4

    const-string/jumbo v3, "call_block_number_formatter"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_0
    if-lt v4, v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d05dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "call_block_number_formatter"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->showErrorText(Z)V

    return v8

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "com.android.providers.blockednumber"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton(Z)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->showErrorText(Z)V

    return v8
.end method

.method public clickSaveBtn()V
    .locals 6

    const/4 v4, 0x1

    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "clickSaveBtn"

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "feature_dcm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "EmergencyNumber can\'t be blocked."

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v2, 0x7f0d0539

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_MODE:Z

    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_ID:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    const v2, 0x7f0d0535

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const v2, 0x7f0d01f2

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d021b

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    return-void

    :cond_4
    iget v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_MODE:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_ID:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->addAutoRejectNumber(Ljava/lang/String;I)J

    goto :goto_0

    :cond_7
    const v2, 0x7f0d0537

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clickSecSearchContactBtn()V
    .locals 3

    const-string/jumbo v1, "SecAutoRejectList"

    const-string/jumbo v2, "onClick SecSearchContactsButton"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f0d0995

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteNativeBlockNumber(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteNativeBlockNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "content://com.android.phone.callsettings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "unblocking_provider_number"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public getInputFieldNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIACommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21

    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "handleIACommand command..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v8, p2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string/jumbo v2, "add"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "feature_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_4

    const-string/jumbo v2, "starts with"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    return v2

    :cond_0
    const-string/jumbo v2, "ends with"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v20, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "include"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v20, 0x3

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteria:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->performClick()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mSpinner:Landroid/widget/Spinner;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->criteriaSub:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchEntry:[Ljava/lang/String;

    aget-object v3, v3, v20

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->performClick()Z

    const/16 v19, 0x1

    :goto_1
    return v19

    :cond_5
    const-string/jumbo v2, "setText"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "del"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "del command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v12, v2

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v11, v12

    add-int/lit8 v7, v7, 0x1

    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_9
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_a
    if-nez v7, :cond_d

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v9, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    move v3, v2

    :goto_3
    if-ge v3, v4, :cond_c

    aget-object v16, v17, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move v11, v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v8, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "del cmd matched : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v7, v2, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/phone/callsettings/SecAutoRejectList;->deleteAutoRejectNumber(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/phone/callsettings/SecAutoRejectList;->deleteNativeBlockNumber(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    const/16 v19, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v2, 0x1

    if-le v7, v2, :cond_f

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "DeleteBlocklist"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "result_count"

    invoke-static/range {v2 .. v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "DeleteBlocklist"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "invalid command"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;Z)V

    const/16 v19, 0x3

    goto/16 :goto_1
.end method

.method protected initializeSecAddButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d07f6

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/callsettings/SecAutoRejectList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$7;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d050a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isAvailableAddbutton()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0201a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0d07f6

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkErrorText()Z

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v2, 0x7f0d050a

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isAvailableAddbutton(Z)V
    .locals 3

    const-string/jumbo v0, "SecAutoRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAvailableAddbutton by showErrorText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d07f6

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
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
    .locals 17

    invoke-super/range {p0 .. p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v14, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/callsettings/SecAutoRejectList$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/phone/callsettings/SecAutoRejectList$12;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :pswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NUMBER"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/callsettings/SecAutoRejectList;->isUnknownNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "unknwon number from log"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :cond_3
    :goto_1
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    const-string/jumbo v3, "NUMBER"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_9

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_7

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/callsettings/SecAutoRejectList;->addContactNumber(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_7

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_9
    if-eqz v10, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v9, v2, :cond_d

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const v2, 0x7f0d05de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AddBlockNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_b

    const v2, 0x7f0d01f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d021a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    goto/16 :goto_0

    :cond_c
    const v2, 0x7f0d05e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "AddBlockNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const v2, 0x7f0d05df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "ActualAddBlockNumbers"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "Contacts_count"

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-static/range {v2 .. v7}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_e
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x7f0d0535

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AddBlockNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const v2, 0x7f0d0537

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BlockNumbers"

    const-string/jumbo v3, "ActualAddBlockNumbers"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "onActivityResult: cancelled."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "SecAutoRejectList"

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v3, "onCreate "

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d01f1

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0231

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/SecAutoRejectList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "autoreject_maxcount"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->autoreject_maxcount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0500

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "isOutgoing"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsOutgoing:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getArgument : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsOutgoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsOutgoing:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_OUTGOINGCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "feature_jpn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0d052f

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->setHasOptionsMenu(Z)V

    return-void

    :cond_2
    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentURI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    const v2, 0x7f0d052b

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne p1, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0900d0

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    new-array v1, v11, [Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unknown_mode_jpn"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    and-int/lit8 v4, v6, 0xf

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unknown_mode"

    invoke-static {v7, v10, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unknown_mode_jpn"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unknown_mode"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_2

    invoke-static {v5, v3}, Lcom/android/services/utils/AutoRejectUtils;->getNthPositionValue(II)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    aput-boolean v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d02bf

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/callsettings/SecAutoRejectList$9;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList$9;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Z)V

    invoke-virtual {v0, v2, v1, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/callsettings/SecAutoRejectList$10;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList$10;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;[Z)V

    const v8, 0x7f0d02ca

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/callsettings/SecAutoRejectList$11;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$11;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    const v8, 0x7f0d0971

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    :cond_3
    const/4 v7, 0x0

    return-object v7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v6, 0x7f0400d6

    invoke-virtual {p1, v6, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecAutoRejectList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v6, 0x7f100061

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    const v6, 0x7f100171

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    const v6, 0x7f100268

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mLableText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mLableText:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v6, 0x7f100263

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v6, "call_block_number_formatter"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-array v2, v11, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v2, v10

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-static {v6, v7}, Lcom/android/phone/utils/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-nez v6, :cond_1

    const-string/jumbo v6, "SecAutoRejectList"

    const-string/jumbo v7, "onCreateView() - editBox is null !!"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    new-instance v7, Lcom/android/phone/callsettings/SecAutoRejectList$4;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$4;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/android/phone/callsettings/SecAutoRejectList$5;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$5;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v6, 0x7f10006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->initializeSecAddButton()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v6, "UPDATE_MODE"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_MODE:Z

    iget-boolean v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_MODE:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "UPDATE_ID"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->update_ID:I

    const-string/jumbo v6, "MATCH_MODE"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    const-string/jumbo v6, "SELECT_NUMBER"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->select_NUM:Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    iput v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchCriteria:I

    iget v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->match_MODE:I

    iput v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->previous_match_MODE:I

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->select_NUM:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->previous_NUM:Ljava/lang/String;

    const-string/jumbo v6, "call_block_number_formatter"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->select_NUM:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->select_NUM:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->select_NUM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    const-string/jumbo v6, "isOutgoing"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->initLayout(Landroid/view/View;)V

    const-string/jumbo v6, "dcm_auto_reject_conditions"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->drawSecBlockedCategoryItem(Landroid/view/View;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    return-object v5

    :cond_5
    iput v10, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mMatchCriteria:I

    goto :goto_0

    :cond_6
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->drawSecUnknownItem(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "SecAutoRejectList"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->stopContactQuery()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecAutoRejectList"

    const-string/jumbo v1, "blocklist onPause, clear stateListener"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "BlockNumbers"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPrepareDialog(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v1, "SecAutoRejectList"

    const-string/jumbo v2, "onResume "

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const v1, 0x7f0d01f2

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mIsForeground:Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/SecAutoRejectList$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecAutoRejectList$8;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mUpdateScreen:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mFirstVisibleItem:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v3, "BLCO"

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v6, v4}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SecAutoRejectList"

    const-string/jumbo v2, "block list onResume"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/phone/ia/SecAutoRejectListStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/SecAutoRejectListStateListener;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v1, "SecAutoRejectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "executing stateid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BlockNumbers"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BlockNumbers"

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "BlockNumbers"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->updateTitleBar()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->startContactQuery()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SecAutoRejectList"

    const-string/jumbo v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvailableAddbutton()V

    return-void
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecAutoRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
