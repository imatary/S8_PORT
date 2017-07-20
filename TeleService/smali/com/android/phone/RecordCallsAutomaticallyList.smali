.class public Lcom/android/phone/RecordCallsAutomaticallyList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RecordCallsAutomaticallyList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecordCallsAutomaticallyList$1;,
        Lcom/android/phone/RecordCallsAutomaticallyList$2;,
        Lcom/android/phone/RecordCallsAutomaticallyList$3;,
        Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;,
        Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;,
        Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;
    }
.end annotation


# static fields
.field public static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final FROM:[Ljava/lang/String;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private AddButton:Landroid/widget/ImageView;

.field private final QUERY_COMPLETE:I

.field private contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

.field private defaultName:Ljava/lang/String;

.field private editBox:Landroid/widget/EditText;

.field private emptyText:Landroid/widget/ScrollView;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field mEmptyDesc:Landroid/widget/TextView;

.field mEmptyDesc2:Landroid/widget/TextView;

.field mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mErrorText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mLableText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mRecordCallsItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCallsListAdapter:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mToast:Landroid/widget/Toast;

.field private mUnknownLayout:Landroid/widget/LinearLayout;

.field private mUpdateScreen:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/RecordCallsAutomaticallyList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/RecordCallsAutomaticallyList;)Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsListAdapter:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/RecordCallsAutomaticallyList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/RecordCallsAutomaticallyList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/RecordCallsAutomaticallyList;->deleteRecordCallsNumber(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->stopContactQuery()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "enhanced_selected_number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/RecordCallsAutomaticallyList;->FROM:[Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/RecordCallsAutomaticallyList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/RecordCallsAutomaticallyList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "additional"

    const-string/jumbo v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/RecordCallsAutomaticallyList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/RecordCallsAutomaticallyList;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->defaultName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mIsForeground:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->QUERY_COMPLETE:I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/RecordCallsAutomaticallyList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$1;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/RecordCallsAutomaticallyList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$2;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/RecordCallsAutomaticallyList$3;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList$3;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addRecordCallsNumber(Ljava/lang/String;)J
    .locals 7

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "enhanced_selected_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteRecordCallsNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkErrorText()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

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

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private getRecordCallsNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/RecordCallsAutomaticallyList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f10005e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f100065

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const v3, 0x7f100264

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->emptyText:Landroid/widget/ScrollView;

    const v3, 0x7f100051

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v3, 0x7f100265

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v3, 0x7f100266

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc:Landroid/widget/TextView;

    const v3, 0x7f100267

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->initNoItemAnimation()V

    return-void
.end method

.method private initNoItemAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/RecordCallsAutomaticallyList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$6;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/RecordCallsAutomaticallyList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$7;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private makeScreen()V
    .locals 11

    const/16 v6, 0x8

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iput-boolean v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUpdateScreen:Z

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "LOG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v5, "call_block_number_formatter"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/phone/utils/PhoneNumberFormatter;->setPhoneNumberFormatting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v1, v9}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsListAdapter:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    if-nez v5, :cond_3

    new-instance v5, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v8, v9}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsListAdapter:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    :cond_3
    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsListAdapter:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvailableAddbutton()V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->startContactQuery()V

    iget-object v8, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->emptyText:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->showInitAnimation()V

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v4, v9}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v5, v7

    goto :goto_1

    :cond_7
    move v7, v6

    goto :goto_2
.end method

.method private resetAnimation()V
    .locals 4

    const/16 v3, 0x19

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private showInitAnimation()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->resetAnimation()V

    iget-object v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v7}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    iget-object v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc2:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mEmptyDesc2:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;->interrupt()V

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->contactQueryThread:Lcom/android/phone/RecordCallsAutomaticallyList$QueryThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public addContactNumber(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "RecordCallsAutomaticallyList"

    const-string/jumbo v2, "addContactNumber"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "call_block_number_formatter"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->addRecordCallsNumber(Ljava/lang/String;)J

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/RecordCallsAutomaticallyList;->addRecordCallsNumber(Ljava/lang/String;)J

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "afterTextChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "beforeTextChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v5, "RecordCallsAutomaticallyList"

    const-string/jumbo v6, "checkAlreadyInUse : cursor is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    move-object v3, p1

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "call_block_number_formatter"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "RecordCallsAutomaticallyList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v0, 0x0

    :cond_5
    return v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v5, "RecordCallsAutomaticallyList"

    const-string/jumbo v6, "NumberFormatException"

    invoke-static {v5, v6, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    :cond_6
    throw v5
.end method

.method public checkErrorText()Z
    .locals 8

    const/16 v1, 0x64

    const/16 v0, 0x1e

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->showErrorText(Z)V

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "editText length is zero!"

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v6

    :cond_1
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/RecordCallsAutomaticallyList;->showErrorText(Z)V

    invoke-virtual {p0, v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvailableAddbutton(Z)V

    return v6

    :cond_2
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c11

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/RecordCallsAutomaticallyList;->showErrorText(Z)V

    invoke-virtual {p0, v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvailableAddbutton(Z)V

    return v6

    :cond_3
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v3

    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    if-lt v3, v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d05dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "call_block_number_formatter"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/RecordCallsAutomaticallyList;->showErrorText(Z)V

    return v7

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->showErrorText(Z)V

    return v7
.end method

.method public clickSaveBtn()V
    .locals 6

    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    const-string/jumbo v3, "clickSaveBtn"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkErrorText()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->addRecordCallsNumber(Ljava/lang/String;)J

    :goto_0
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const v2, 0x7f0d01fb

    invoke-virtual {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d021b

    invoke-virtual {p0, v3}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->addRecordCallsNumber(Ljava/lang/String;)J

    goto :goto_0
.end method

.method public clickSearchContactBtn()V
    .locals 3

    const-string/jumbo v1, "RecordCallsAutomaticallyList"

    const-string/jumbo v2, "onClick ContactsButton"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/phone/RecordCallsAutomaticallyList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f0d0995

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInputFieldData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIACommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/4 v2, 0x1

    const/4 v12, 0x0

    const-string/jumbo v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return v2

    :cond_0
    const-string/jumbo v0, "del"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v8, v0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v10, v8

    add-int/lit8 v5, v5, 0x1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v0, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mRecordCallsItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v0, v0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v10, v8

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    if-ne v5, v2, :cond_7

    invoke-direct {p0, v10}, Lcom/android/phone/RecordCallsAutomaticallyList;->deleteRecordCallsNumber(I)V

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    return v2

    :cond_7
    if-le v5, v2, :cond_8

    const-string/jumbo v0, "ManageRecordingNumbers"

    const-string/jumbo v1, "DeleteAutoRecordingNumbers"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "multi"

    const-string/jumbo v4, "result_count"

    invoke-static/range {v0 .. v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return v12

    :cond_8
    const-string/jumbo v0, "ManageRecordingNumbers"

    const-string/jumbo v1, "DeleteAutoRecordingNumbers"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_9
    const-string/jumbo v0, "setText"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v12

    :cond_a
    return v12
.end method

.method protected initializeAddButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d07f6

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/RecordCallsAutomaticallyList$4;

    invoke-direct {v1, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$4;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvailableAddbutton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d050a

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isAvailableAddbutton()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d07f6

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkErrorText()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f02015d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    const v1, 0x7f0d050a

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isAvailableAddbutton(Z)V
    .locals 3

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

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

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17

    invoke-super/range {p0 .. p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v14, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_4

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

    invoke-virtual {v0, v15}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "call_block_number_formatter"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/RecordCallsAutomaticallyList;->addContactNumber(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_4
    if-eqz v10, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v9, v2, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const v2, 0x7f0d05de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ManageRecordingNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AddAutoRecordingNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getRecordCallsNumber()Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    const v2, 0x7f0d01fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d021a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f0d05e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ManageRecordingNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "AddAutoRecordingNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const v2, 0x7f0d05df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ManageRecordingNumbers"

    const-string/jumbo v3, "ActualAddAutoRecordingNumbers"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "Contacts_count"

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-static/range {v2 .. v7}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "ManageRecordingNumbers"

    const-string/jumbo v3, "SelectedContacts"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AddAutoRecordingNumbers"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-static/range {v2 .. v8}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v2, "ManageRecordingNumbers"

    const-string/jumbo v3, "ActualAddAutoRecordingNumbers"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->makeNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v2, "RecordCallsAutomaticallyList"

    const-string/jumbo v3, "onActivityResult: cancelled."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0500

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->defaultName:Ljava/lang/String;

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->ENHANCED_SELECTED_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c0e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/RecordCallsAutomaticallyList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v3, 0x7f0400d6

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100263

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f100061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    const v3, 0x7f100171

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    const v3, 0x7f100268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mLableText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mLableText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUnknownLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUnknownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/RecordCallsAutomaticallyList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->imm:Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v3, "call_block_number_formatter"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v6

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/android/phone/utils/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    const v3, 0x7f10006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->initializeAddButton()V

    invoke-direct {p0, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->stopContactQuery()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "ManageRecordingNumbers"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "onResume "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mIsForeground:Z

    const v0, 0x7f0d01fb

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/RecordCallsAutomaticallyList$5;

    invoke-direct {v1, p0}, Lcom/android/phone/RecordCallsAutomaticallyList$5;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mUpdateScreen:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->makeScreen()V

    :goto_0
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;-><init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "manage autorecord call list on resume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ManageRecordingNumbers"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ManageRecordingNumbers"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "ManageRecordingNumbers"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->startContactQuery()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const-string/jumbo v0, "RecordCallsAutomaticallyList"

    const-string/jumbo v1, "onTextChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvailableAddbutton()V

    return-void
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsAutomaticallyList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
