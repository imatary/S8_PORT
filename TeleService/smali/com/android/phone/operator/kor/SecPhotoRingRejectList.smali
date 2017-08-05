.class public Lcom/android/phone/operator/kor/SecPhotoRingRejectList;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/SecPhotoRingRejectList$1;,
        Lcom/android/phone/operator/kor/SecPhotoRingRejectList$2;,
        Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;,
        Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;,
        Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;

.field private static defaultName:Ljava/lang/String;


# instance fields
.field private MAX_NUMBER_LENGTH:I

.field private final QUERY_COMPLETE:I

.field private contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

.field private createLayout:Landroid/widget/LinearLayout;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAddButton:Landroid/widget/ImageView;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentURI:Landroid/net/Uri;

.field private mDivider:Landroid/view/View;

.field private mEditBox:Landroid/widget/EditText;

.field mEmptyDesc:Landroid/widget/TextView;

.field mEmptyDesc2:Landroid/widget/TextView;

.field mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field private mEmptyText:Landroid/widget/ScrollView;

.field private mErrorText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mLableText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mPhotoringRejectAdapter:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

.field private mPhotoringRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mUpdateScreen:Z

.field private rejectAllSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectAdapter:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->deletePhotoringRejectNumber(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->isAvailableAddbutton()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->makeScreen()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->stopContactQuery()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->updateRejectAll()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "photoring_reject_number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "photoring_reject_checked"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->FROM:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->defaultName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string/jumbo v1, "additional"

    const-string/jumbo v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->MAX_NUMBER_LENGTH:I

    iput v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->QUERY_COMPLETE:I

    sget-object v0, Lcom/android/phone/callsettings/ProviderConstants;->PHOTORING_REJECT_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mUpdateScreen:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$1;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$2;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$2;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addPhotoRingRejectNumber(Ljava/lang/String;)J
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "photoring_reject_number"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "photoring_reject_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getPhotoringRejectNumber()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "SecPhotoRingRejectList"

    const-string/jumbo v5, "checkAlreadyInUse : cursor is null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SecPhotoRingRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAlreadyInUse : MATCH_EQUAL, rejectNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v0, 0x0

    return v2

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "SecPhotoRingRejectList"

    const-string/jumbo v5, "NumberFormatException"

    invoke-static {v4, v5, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    throw v4
.end method

.method private deletePhotoringRejectNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SecPhotoRingRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception is  "

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
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getPhotoringRejectNumber()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f100065

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const v4, 0x7f100265

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyText:Landroid/widget/ScrollView;

    const v4, 0x7f100051

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v4, 0x7f100264

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mDivider:Landroid/view/View;

    const v4, 0x7f100060

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f10004f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    const v4, 0x7f100266

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v4, 0x7f100267

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc:Landroid/widget/TextView;

    const v4, 0x7f100268

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->initNoItemAnimation()V

    const v4, 0x7f10004b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10005e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "photoring_reject_all"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const v4, 0x7f0d095f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initNoItemAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$6;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$6;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$7;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$7;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private initializeAddButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->isAvailableAddbutton()V

    return-void
.end method

.method private isAvailableAddbutton()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d085a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->checkErrorText()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d056a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isAvailableAddbutton(Z)V
    .locals 3

    const-string/jumbo v0, "SecPhotoRingRejectList"

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

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private makeScreen()V
    .locals 12

    const/16 v7, 0x8

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mUpdateScreen:Z

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v9, "country_detector"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getPhotoringRejectNumber()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v6, "SecPhotoRingRejectList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PhotoringRejectNum Number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / ID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / checked:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectAdapter:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    if-nez v6, :cond_4

    new-instance v6, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v6, p0, v9, v10}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectAdapter:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    :cond_4
    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectAdapter:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->isAvailableAddbutton()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->startContactQuery()V

    iget-object v9, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyText:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    :goto_1
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_5

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->showInitAnimation()V

    :cond_5
    return-void

    :cond_6
    move v6, v8

    goto :goto_0

    :cond_7
    move v8, v7

    goto :goto_1
.end method

.method private resetAnimation()V
    .locals 4

    const/16 v3, 0x19

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc2:Landroid/widget/TextView;

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

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->resetAnimation()V

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v7}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc2:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyDesc2:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    const-string/jumbo v0, "SecPhotoRingRejectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    invoke-virtual {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->interrupt()V

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->contactQueryThread:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;

    :cond_0
    return-void
.end method

.method private updateRejectAll()V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_8

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->createLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEmptyText:Landroid/widget/ScrollView;

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mPhotoringRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_6
    return-void

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public checkErrorText()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->showErrorText(Z)V

    const-string/jumbo v0, "SecPhotoRingRejectList"

    const-string/jumbo v1, "editText length is zero!"

    invoke-static {v0, v1, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c80

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->showErrorText(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->isAvailableAddbutton(Z)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->MAX_NUMBER_LENGTH:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0640

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->MAX_NUMBER_LENGTH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->showErrorText(Z)V

    return v5

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->showErrorText(Z)V

    return v5
.end method

.method public clickSaveBtn()V
    .locals 3

    const-string/jumbo v0, "SecPhotoRingRejectList"

    const-string/jumbo v1, "clickSaveBtn"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->checkErrorText()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->addPhotoRingRejectNumber(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->makeScreen()V

    return-void
.end method

.method public clickSearchContactBtn()V
    .locals 3

    const-string/jumbo v1, "SecPhotoRingRejectList"

    const-string/jumbo v2, "onClick ContactsButton"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x7f0d09fb

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleeIAState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v3, 0x3

    const-string/jumbo v4, "BlockAll"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "on"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "photoring_reject_all"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v4, "SecPhotoRingRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleIAState Block All curr val : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_2

    const/4 v3, 0x2

    :cond_0
    :goto_1
    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->rejectAllSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "photoring_reject_all"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->updateRejectAll()V

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v7, -0x1

    if-ne p2, v7, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "result"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->MAX_NUMBER_LENGTH:I

    if-le v7, v8, :cond_2

    iget v7, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->MAX_NUMBER_LENGTH:I

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-direct {p0, v5}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->addPhotoRingRejectNumber(Ljava/lang/String;)J

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    const v7, 0x7f0d0642

    invoke-virtual {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->makeScreen()V

    goto :goto_0

    :cond_5
    const v7, 0x7f0d0644

    invoke-virtual {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const v7, 0x7f0d0643

    invoke-virtual {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->displayToast(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v7, "SecPhotoRingRejectList"

    const-string/jumbo v8, "onActivityResult: cancelled."

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "SecPhotoRingRejectList"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0560

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->defaultName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0983

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mLableText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mLableText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    new-instance v2, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const v1, 0x7f10006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->initializeAddButton()V

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->makeScreen()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->updateRejectAll()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "SecPhotoRingRejectList"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mIsForeground:Z

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->stopContactQuery()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MCIDManageBlocklist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "SecPhotoRingRejectList"

    const-string/jumbo v1, "onResume "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mIsForeground:Z

    iget-boolean v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->stopContactQuery()V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->makeScreen()V

    :goto_0
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/ia/SecPhotoRingRejectListStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/SecPhotoRingRejectListStateListener;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MCIDManageBlocklist"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MCIDManageBlocklist"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MCIDManageBlocklist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->startContactQuery()V

    goto :goto_0
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mEditBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
