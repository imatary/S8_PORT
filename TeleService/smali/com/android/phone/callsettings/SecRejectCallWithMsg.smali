.class public Lcom/android/phone/callsettings/SecRejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$1;,
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;,
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$3;,
        Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static mSelectedItem:I


# instance fields
.field AddButton:Landroid/widget/ImageView;

.field private final EDITED_REJECT_MESSAGE:I

.field emptyText:Landroid/widget/ScrollView;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mCounterText:Landroid/widget/TextView;

.field mCreateEdit:Landroid/widget/EditText;

.field private mEdittextBlockEnd:I

.field private mEdittextBlockStart:I

.field mEmptyDesc:Landroid/widget/TextView;

.field mEmptyDesc2:Landroid/widget/TextView;

.field mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

.field mErrorText:Landroid/widget/TextView;

.field private mIsForeground:Z

.field protected mIsLandscape:Z

.field mLableText:Landroid/widget/TextView;

.field mListView:Landroid/widget/ListView;

.field private mMaxNumberMsgVisible:Z

.field private mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

.field private mSelectedItemForEdit:I

.field private mState:I

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mTempEditString:Ljava/lang/String;

.field private final mTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mUpdateScreen:Z

.field private mUpdated:Z

.field private prevString:Ljava/lang/String;

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkErrorText()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "reject_message"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "edit_checked"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "remind_time"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->EDITED_REJECT_MESSAGE:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->istoastshowing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 9

    const/4 v8, 0x1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "reject_message"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "edit_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v6, "SQLiteException is thrown"

    invoke-direct {p0, v6, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "SQLiteReadOnlyDatabaseException is thrown"

    invoke-direct {p0, v6, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private checkErrorText()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return v6

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    const-string/jumbo v1, "SecRejectCallWithMsg"

    const-string/jumbo v2, "mCreateEdit length is zero!"

    invoke-static {v1, v2, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v6

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0628

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton(Z)V

    return v6

    :cond_3
    return v7
.end method

.method private deleteRejectMessage()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecRejectCallWithMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception is  "

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

.method private deleteRejectMessage(I)V
    .locals 6

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

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

    const-string/jumbo v2, "SecRejectCallWithMsg"

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0x7f100238

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v1, 0x7f100239

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showInitAnimation()V

    goto :goto_0
.end method

.method private initNoItemAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setSVG(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$9;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$10;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "SecRejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshRejectList()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showInitAnimation()V

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 4

    const/16 v3, 0x19

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/phone/utils/DPUtil;->dpToPx(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private setAvailableAddbutton(Z)V
    .locals 3

    const-string/jumbo v0, "SecRejectCallWithMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAvailableAddbutton by showErrorText"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method private showInitAnimation()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->resetAnimation()V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-virtual {v7}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->start()V

    iget-object v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc2:Landroid/widget/TextView;

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

    iget-object v7, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc2:Landroid/widget/TextView;

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

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-wide/16 v8, 0x1

    sub-long v8, v2, v8

    long-to-int v0, v8

    if-eqz v5, :cond_0

    sget-object v8, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    aget v8, v8, v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_2
    const-string/jumbo v8, "SecRejectCallWithMsg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "List Index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " isDefaultMessage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "SecRejectCallWithMsg"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Reject Message = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v4

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_2
    sget-object v8, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->DefaultMessageSimple:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListSimple:[I

    aget v8, v8, v0

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move v1, v4

    :cond_4
    const/4 v8, 0x6

    if-le v1, v8, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->deleteRejectMessage()V

    :cond_5
    return-void
.end method

.method private updateRejectMessage()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 9

    const/4 v8, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "edit_checked"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v4, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, p2

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SQLiteException is thrown"

    invoke-direct {p0, v4, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SQLiteReadOnlyDatabaseException is thrown"

    invoke-direct {p0, v4, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public ClickAddButton()V
    .locals 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const v3, 0x7f0d062c

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    iput-boolean v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    const v3, 0x7f0d0250

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0279

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 12

    const v11, 0x7f0d05b8

    const/16 v10, 0xa0

    const/16 v7, 0x46

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "SecRejectCallWithMsg"

    const-string/jumbo v5, "============== afterTextChanged ============== :"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "display_reject_message_limit_for_kor"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const-string/jumbo v4, "SecRejectCallWithMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStringByteSize(text)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v4

    if-ge v7, v4, :cond_1

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0640

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "dcm_reject_call_msg_limit"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    filled-new-array {v8, v8, v8, v8}, [I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-static {v3, v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v9

    add-int/2addr v4, v5

    if-ge v7, v4, :cond_3

    const-string/jumbo v4, "SecRejectCallWithMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SmsMessage Full Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0640

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_3
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v3, v8}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v4, v2, v4

    aget v5, v2, v9

    add-int/2addr v4, v5

    if-ge v10, v4, :cond_5

    const-string/jumbo v4, "SecRejectCallWithMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SmsMessage Half Size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v11, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0640

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    goto/16 :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public checkAlreadyInUseForBixby(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string/jumbo v2, "SecRejectCallWithMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAlreadyInUseForBixby rejectMsgList.get(i): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "[.,!?]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getInputFieldData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectMessage()Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "_id desc"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->FROM:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    return-object v7
.end method

.method public getStringByteSize(Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x7f

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v8

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "45006"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_1

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    :goto_2
    return v3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v6, v9, :cond_6

    :cond_5
    if-ne v0, v2, :cond_7

    move v3, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v6

    const/16 v7, 0x1b

    if-eq v7, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    goto :goto_2
.end method

.method public goToEditRejectMsgScreen(I)V
    .locals 6

    sput p1, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    sget v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    iput v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItemForEdit:I

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "callsettings_reject_messages"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public handleIACommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p2, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V

    return-void

    :cond_0
    const-string/jumbo v2, "setText"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string/jumbo v2, "REJECT_MESSAGE_RESULT_Intent"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    const-string/jumbo v2, "EDITED_MESSAGE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EDITED_REMINDTIME"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "UPDATED"

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "Configuration"

    const-string/jumbo v2, "changed "

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d024e

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d0290

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsLandscape:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v3, 0x7f0400df

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100272

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mLableText:Landroid/widget/TextView;

    const v3, 0x7f100233

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const v3, 0x7f100234

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    const v3, 0x7f10006b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    const v3, 0x7f100235

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    const v3, 0x7f100266

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyImage:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    const v3, 0x7f100267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc:Landroid/widget/TextView;

    const v3, 0x7f100268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEmptyDesc2:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->initNoItemAnimation()V

    if-eqz p3, :cond_0

    const-string/jumbo v3, "editString"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    const-string/jumbo v3, "edittext_block_start"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockStart:I

    const-string/jumbo v3, "edittext_block_end"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    const-string/jumbo v3, "max_number_msg_visible"

    invoke-virtual {p3, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mLableText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const-string/jumbo v4, "disableEmoticonInput=true"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateTextCounter(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->AddButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton()V

    new-instance v0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    new-array v1, v6, [Landroid/text/InputFilter;

    const-string/jumbo v3, "dcm_reject_call_msg_limit"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    aput-object v0, v1, v5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->prevString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const v4, 0x50000006

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    :cond_3
    :goto_0
    const-string/jumbo v3, "display_reject_message_limit_for_kor"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_4
    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    new-instance v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->initLayout(Landroid/view/View;)V

    return-object v2

    :cond_6
    new-instance v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg$6;

    const/16 v4, 0xa0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;I)V

    aput-object v3, v1, v5

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "SecRejectCallWithMsg"

    const-string/jumbo v1, "onDestroyView()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    const-string/jumbo v0, "SecRejectCallWithMsg"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "QuickDeclineMessage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mIsForeground:Z

    const v3, 0x7f0d0250

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current mState in onResume = :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v2, :cond_7

    :goto_0
    iput v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$11;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$11;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v1, "SecRejectCallWithMsg"

    const-string/jumbo v2, "reject msg onResume set statelistener"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "QuickDeclineMessage"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "QuickDeclineMessage"

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "QuickDeclineMessage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockStart:I

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mEdittextBlockEnd:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->refreshRejectList()V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "edittext_block_start"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "edittext_block_end"

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "max_number_msg_visible"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateTextCounter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 10

    move-object v4, p1

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0628

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f0d062c

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\n"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f0d062c

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSelectedItem = :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->log(Ljava/lang/String;Z)V

    sget v6, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_6

    iget-boolean v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mUpdated:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    sget v7, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    sget v7, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    sget v7, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p1, v5, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    const/4 v6, -0x1

    sput v6, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mSelectedItem:I

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mState:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x6

    if-le v7, v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v6, "RejectCallWithMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0d0547

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "feature_sbm"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0d0548

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    const-string/jumbo v6, "RejectCallWithMsg"

    const-string/jumbo v7, "max in saveRejectMessage - no add"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->emptyText:Landroid/widget/ScrollView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showInitAnimation()V

    goto/16 :goto_2
.end method

.method public setAvailableAddbutton()V
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$12;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton(Z)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setWritingBuddyEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mMaxNumberMsgVisible:Z

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->showErrorText(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg$13;-><init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkErrorText()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->setAvailableAddbutton(Z)V

    goto :goto_0
.end method

.method public showErrorText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mErrorText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public updateTextCounter(Ljava/lang/CharSequence;)V
    .locals 9

    const/16 v8, 0x46

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v3, "dcm_reject_call_msg_limit"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    filled-new-array {v6, v6, v6, v6}, [I

    move-result-object v1

    aget v3, v0, v4

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int/lit8 v5, v5, 0x46

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCounterText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    aget v5, v1, v5

    rsub-int v5, v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "display_reject_message_limit_for_kor"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "%d/%d"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
