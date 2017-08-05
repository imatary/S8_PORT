.class public Lcom/android/phone/callsettings/RejectCallWithMsg;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$1;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$2;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$3;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$4;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;,
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field istoastshowing:Z

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCheckClickListener:Landroid/view/View$OnClickListener;

.field private mCheckedCount:I

.field private mCheckedItemPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDlg:Landroid/app/AlertDialog;

.field private mDestroyAutoRejectList:Z

.field private mEditModeFromMenu:Z

.field private mEdited:I

.field private mEnableCheckedView:Z

.field private mEnableClickSound:Z

.field private mIsActionBarPopupListMode:Z

.field private mIsForeground:Z

.field protected mIsLandscape:Z

.field private mIsSelectAllmode:Z

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mListView:Landroid/widget/ListView;

.field private mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

.field private mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

.field mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSelectAllMode:Z

.field private mSelectedCount:I

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mTouchCheckItem:Z

.field private mUpdateScreen:Z

.field private mUpdated:Z

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

.field private remindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/phone/callsettings/RejectCallWithMsg;)Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/RejectCallWithMsg;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDestroyAutoRejectList:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/phone/callsettings/RejectCallWithMsg;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/RejectCallWithMsg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

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

    sput-object v0, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->istoastshowing:Z

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsActionBarPopupListMode:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllMode:Z

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTouchCheckItem:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableClickSound:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDestroyAutoRejectList:Z

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$2;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$3;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsg$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$4;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;I)J
    .locals 7

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "edit_checked"

    iget v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "remind_time"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

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

.method private deleteRejectMessage()V
    .locals 5

    :try_start_0
    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

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

    const-string/jumbo v1, "RejectCallWithMsg"

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
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

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

    const-string/jumbo v2, "RejectCallWithMsg"

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

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v5, "_id desc"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v1, 0x7f100238

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const v1, 0x7f100239

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "RejectCallWithMsg"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshRejectList()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_0
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_0
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    iget v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "Edited"

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    :goto_2
    const-string/jumbo v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RejectMsg idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Reject Message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ID = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "isChanged "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move v1, v4

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v8, v2, v10

    sget-object v10, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    long-to-int v11, v8

    aget v0, v10, v11

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "RejectCallWithMsg"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_2
    move v1, v4

    :cond_3
    const/4 v10, 0x6

    if-le v1, v10, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->deleteRejectMessage()V

    :cond_4
    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_1
    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "SELECTED_MESSAGE"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "callsettings_reject_messages"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v5, 0x7f0d08e1

    :cond_2
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method private updateRejectMessage()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current mState = :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "remind_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateTitleBar()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const v2, 0x7f0d05b0

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d09e3

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string/jumbo v2, "action_bar_no_title_when_has_two_menu"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d08e1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v2, "dispatchKeyEvent"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "LongPress of BackKey"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public goToEditRejectMsgScreen(I)V
    .locals 6

    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItemForEdit:I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "SELECTED_MESSAGE"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "callsettings_reject_messages"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "action_bar_no_title_when_has_two_menu"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v5, 0x7f0d08e1

    :cond_0
    const-class v0, Lcom/android/phone/callsettings/EditRejectCallWithMsgScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const-string/jumbo v2, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "EDITED_MESSAGE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EDITED_REMINDTIME"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "UPDATED"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;I)V

    :cond_1
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

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsLandscape:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0400c1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string/jumbo v1, "editString"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    const-string/jumbo v1, "selectedItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "actionModeCount"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    :cond_0
    :goto_0
    const-string/jumbo v1, "actionMode"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    const-string/jumbo v1, "fromMenu"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V

    return-object v0

    :cond_2
    const-string/jumbo v1, "checkedItems"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "checkedItems"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDestroyAutoRejectList:Z

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6

    :sswitch_0
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->unSelectAllList()V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage()V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    move-object v2, v4

    check-cast v2, Landroid/widget/ListView;

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V

    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->setActionMode(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    :cond_2
    return v2

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyLeftRun(Landroid/view/View;)V

    return v2

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    const-string/jumbo v0, "RejectCallWithMsg"

    const-string/jumbo v1, "onPause "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/RejectCallWithMsg$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$7;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0d056b

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v4, 0x7f02000a

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v1, 0x7f0d069f

    invoke-interface {p1, v3, v6, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-lez v0, :cond_5

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->createLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateTitleBar()V

    return-void

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsForeground:Z

    iget-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mDeleteDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->removeDialog(I)V

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_6

    :goto_0
    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    iput-boolean v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdateScreen:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->refreshRejectList()V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    :cond_0
    const-string/jumbo v0, "editString"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "actionMode"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "fromMenu"

    iget-boolean v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mEditModeFromMenu:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "actionModeCount"

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v0, "checkedItems"

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public saveRejectMessage(Ljava/lang/String;I)V
    .locals 10

    move-object v4, p1

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

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

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const v6, 0x7f0d062c

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

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

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_3
    iget v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    iget-boolean v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mUpdated:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p1, v5, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;II)V

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mSelectedItem:I

    :cond_4
    :goto_1
    const v6, 0x7f0d0a60

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetInvalidated()V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mState:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->updateCount()V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

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

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

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

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/callsettings/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x6

    if-le v7, v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;I)J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "RejectCallWithMsg"

    const-string/jumbo v7, "max in saveRejectMessage - no add"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActionMode(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "softkeyLeftRun"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$5;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/RejectCallWithMsg$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$6;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mRejectMsgAdpater:Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mModeCallback:Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/RejectCallWithMsg$ActionModeCallback;->updateSelectionMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method
