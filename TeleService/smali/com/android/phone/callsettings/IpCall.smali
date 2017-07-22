.class public Lcom/android/phone/callsettings/IpCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IpCall$1;,
        Lcom/android/phone/callsettings/IpCall$ActionModeCallback;,
        Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;,
        Lcom/android/phone/callsettings/IpCall$NetworkOperator;
    }
.end annotation


# static fields
.field private static FROM:[Ljava/lang/String;

.field private static IP_CALL_NUMBER:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static mAddCount:I

.field private static mDeleteCount:I

.field private static mSimId:I


# instance fields
.field private IPCALL_URI:Landroid/net/Uri;

.field private final IP_NUMBER_MAX_LENGTH:I

.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private ipCallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ipCallListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRecreatedView:Z

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

.field private mAnyPopupDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

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

.field private mClickDeleteMenu:Z

.field private mCurrentSelectItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIpNumber:Ljava/lang/String;

.field private mEditModeFromMenu:Z

.field private mEdited:I

.field private mEnableCheckedView:Z

.field private mEnableClickSound:Z

.field private mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

.field private mIsLongClick:Z

.field private mIsSelectAllmode:Z

.field private mLongClickPos:I

.field private mMenuForBixby:Landroid/view/Menu;

.field private mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/callsettings/IpCall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    return v0
.end method

.method static synthetic -get12()I
    .locals 1

    sget v0, Lcom/android/phone/callsettings/IpCall;->mDeleteCount:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/phone/callsettings/IpCall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/callsettings/IpCall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/phone/callsettings/IpCall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/phone/callsettings/IpCall;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/IpCall;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/phone/callsettings/IpCall;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/IpCall;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/IpCall;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/IpCall;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/IpCall;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/IpCall;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionModeType:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/IpCall;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/IpCall;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/IpCall;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)Lcom/android/phone/callsettings/IpCall$ActionModeCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/phone/callsettings/IpCall;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/phone/callsettings/IpCall;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set17(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/IpCall;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/IpCall;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    return p1
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/android/phone/callsettings/IpCall;->mDeleteCount:I

    return p0
.end method

.method static synthetic -set6(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mEnableClickSound:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/phone/callsettings/IpCall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/IpCall;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/phone/callsettings/IpCall;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/IpCall;ILandroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/IpCall;->sendTouchEvent(ILandroid/widget/ListView;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/IpCall;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->setListItemClick()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/callsettings/IpCall;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "IpCall"

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ipcall_number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "edit_checked"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    const-string/jumbo v0, "IP_CALL_NUMBER"

    sput-object v0, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    sput v3, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    sput v3, Lcom/android/phone/callsettings/IpCall;->mAddCount:I

    sput v3, Lcom/android/phone/callsettings/IpCall;->mDeleteCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mIsLongClick:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mLongClickPos:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->istoastshowing:Z

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mEnableCheckedView:Z

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mEditModeFromMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mIsSelectAllmode:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mEnableClickSound:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->IP_NUMBER_MAX_LENGTH:I

    new-instance v0, Lcom/android/phone/callsettings/IpCall$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/IpCall$1;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    return-void
.end method

.method private addIpNumber(Ljava/lang/String;)J
    .locals 5

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method private deleteIpNumber()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

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

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteIpNumber(I)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

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

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getIpNumberList()Landroid/database/Cursor;
    .locals 2

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemInx(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getItemInx() i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    const v1, 0x7f10015a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "in DELETE_SCREEN state,but no list could be to delete,need to change the state"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    new-instance v1, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private optionMenuConfigurationChanged(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v4, v5, :cond_4

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const-string/jumbo v1, "tablet_device"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_4
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public static phoneIsCdma()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I
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

    sget-object v4, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

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

.method private saveIpNumber(Ljava/lang/String;)V
    .locals 12

    const v10, 0x7f0d0664

    const/16 v11, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    const-wide/16 v2, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0d05c4

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v8, ""

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/IpCall;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_3
    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Ljava/lang/String;I)V

    iput v9, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    iput v7, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x6

    if-le v6, v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->addIpNumber(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "IpCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Added ID = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " number = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v8, "IPCL"

    const-string/jumbo v9, "ADD"

    sget v10, Lcom/android/phone/callsettings/IpCall;->mAddCount:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/android/phone/callsettings/IpCall;->mAddCount:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v6, v8, v9, v10}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "IpCall"

    const-string/jumbo v6, "max in saveIpNumber - no add"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sendTouchEvent(ILandroid/widget/ListView;)V
    .locals 9

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v4, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private setDefaultIpNumber(Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0d063d

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    const-string/jumbo v2, "AUTO"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setListItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$6;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$7;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private showIpNumberList(Landroid/database/Cursor;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_0
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    iget v10, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Edited"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "default ip num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->mDefaultIpNumber:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    :cond_0
    sget-object v10, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IpCall idx"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " IP number "

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

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "AUTO"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const v10, 0x7f0d063d

    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-string/jumbo v10, "AUTO"

    invoke-direct {p0, v10}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    :cond_2
    :goto_3
    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallListID:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_7

    move v1, v4

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    const-wide/16 v10, 0x1

    sub-long v8, v2, v10

    sget v10, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    sget-object v10, Lcom/android/phone/callsettings/IpCallDBSim2;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v11, v8

    aget-object v6, v10, v11

    :goto_4
    sget-object v10, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Not Edited, Use Default valueIP number = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    sget-object v10, Lcom/android/phone/callsettings/IpCallDB;->defaultIpNumberList:[Ljava/lang/String;

    long-to-int v11, v8

    aget-object v6, v10, v11

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    move v1, v4

    :cond_8
    const/4 v10, 0x6

    if-le v1, v10, :cond_9

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->deleteIpNumber()V

    :cond_9
    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteItems()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method private updateIpNumberList()V
    .locals 2

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIpNumberList(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "ipcall_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "edit_checked"

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateIpNumberList(Z)V
    .locals 5

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    new-instance v2, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v1, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current mState = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    return-void
.end method

.method private updateItem()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->addDialog()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d0661

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "action_bar_no_title_when_has_two_menu"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedCount:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d09f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0d087d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public addDialog()V
    .locals 10

    const/4 v7, 0x0

    sget-object v5, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, " addDialog() "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e001e

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040074

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f10015f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    sget-object v5, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "edittext null "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    const v5, 0x10000006

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/callsettings/IpCall$2;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/IpCall$2;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d0661

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$3;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/IpCall$3;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const v7, 0x104000a

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$4;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/IpCall$4;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const v7, 0x7f0d050d

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$5;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/IpCall$5;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItemForEdit:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

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

.method public deleteDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0525

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0524

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/IpCall$16;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$16;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const v3, 0x7f0d050c

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/IpCall$17;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$17;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const v3, 0x7f0d050d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/IpCall$18;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/IpCall$18;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public editDialog()V
    .locals 10

    const/4 v7, 0x0

    sget-object v5, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "editDialog() "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040074

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f10015f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    sget-object v5, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "edittext null "

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0xb

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const-string/jumbo v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/phone/callsettings/IpCall;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/callsettings/IpCall$12;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/IpCall$12;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d050e

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$13;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/IpCall$13;-><init>(Lcom/android/phone/callsettings/IpCall;Landroid/widget/EditText;)V

    const v7, 0x7f0d050c

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$14;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/IpCall$14;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const v7, 0x7f0d050d

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/callsettings/IpCall$15;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/IpCall$15;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public getDefaultIpNumber()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "AUTO"

    return-object v1
.end method

.method public getIpNumberList(Z)Landroid/database/Cursor;
    .locals 12

    const/4 v4, 0x0

    const-string/jumbo v5, "_id asc"

    const-string/jumbo v3, "ipcall_number != \'default_number\' AND ipcall_number != \'AUTO\'"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/phone/callsettings/IpCall;->FROM:[Ljava/lang/String;

    move-object v9, v4

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public handleIACommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIACommand command...cmd :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", param :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v2, "selectNumber"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/IpCall;->getItemInx(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "addNumber"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "deleteNumber"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIACommand() mMenuForBixby="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->mMenuForBixby:Landroid/view/Menu;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mMenuForBixby:Landroid/view/Menu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mMenuForBixby:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mMenuForBixby:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/IpCall;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/IpCall;->getItemInx(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "invalid command"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAvaliableNumber(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-gt v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_2

    :cond_1
    return v4

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "IP_NUMBER_RESULT_Intent"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "EDITED_ITEM"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resultString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "UPDATED"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->mUpdated:Z

    const-string/jumbo v1, "IS_DEFAULT"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->setDefaultIpNumber(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->saveIpNumber(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigurationChanged "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->configChangedReloadActionBar(Landroid/view/ActionMode;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[MultiSIM] IpCallIsDualSimTurnedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_4

    const-string/jumbo v3, "DUAL SIM"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string/jumbo v3, "Bundle is not null"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->setHasOptionsMenu(Z)V

    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_5

    const-string/jumbo v3, "state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IpCall;->setRetainInstance(Z)V

    return-void

    :cond_3
    const-string/jumbo v3, "Bundle is null"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    sput v6, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    goto :goto_0

    :cond_5
    iput v5, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v6

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const v3, 0x7f0d050e

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0510

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/android/phone/callsettings/IpCall$10;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IpCall$10;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/phone/callsettings/IpCall$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IpCall$11;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    return-object v3

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x2

    const v4, 0x7f0d0510

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d050b

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3, v5, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const/4 v0, 0x7

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const v0, 0x7f0d050b

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v3, v5, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const/4 v0, 0x7

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f0d050d

    invoke-interface {p1, v3, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v1, 0x7f0d050d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x4

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020098

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x3

    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020007

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    sget-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreateView "

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    iput-object v6, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mTabCount:I

    if-lez v3, :cond_1

    sget v3, Lcom/android/phone/callsettings/IpCallTabFragment;->mSelectedTabPosition:I

    sput v3, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    :cond_1
    const-string/jumbo v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    :goto_0
    sget-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSimId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateView() mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mSelectedItem  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/IpCall;->log(Ljava/lang/String;)V

    sget v3, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    if-ne v3, v8, :cond_9

    const-string/jumbo v3, "IpCallSim2"

    sput-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "IP_CALL_NUMBER_SIM2"

    sput-object v3, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_SIM2_CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    :goto_1
    sget-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView() IP_CALL_NUMBER : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView() IPCALL_URI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f040072

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz p3, :cond_3

    const-string/jumbo v3, "selectedItem"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/IpCall;->initLayout(Landroid/view/View;)V

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v3, v9, :cond_c

    iget-boolean v3, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    if-eqz v3, :cond_c

    iput-boolean v7, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    iput-boolean v8, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-direct {v3, p0, v6}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    :cond_5
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/phone/callsettings/IpCall;->phoneIsCdma()Z

    move-result v3

    if-eqz v3, :cond_8

    sput v7, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    goto/16 :goto_0

    :cond_8
    sput v8, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "IpCall"

    sput-object v3, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "IP_CALL_NUMBER"

    sput-object v3, Lcom/android/phone/callsettings/IpCall;->IP_CALL_NUMBER:Ljava/lang/String;

    sget-object v3, Lcom/android/phone/callsettings/ProviderConstants;->IPCALL_CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    goto/16 :goto_1

    :cond_a
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    :cond_c
    iget-object v3, p0, Lcom/android/phone/callsettings/IpCall;->IPCALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->registerContentUri(Landroid/net/Uri;)V

    return-object v2
.end method

.method public onDestroyView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDestroyView "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->unregisterContentUri()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    iput-object v4, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mCurrentSelectItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/callsettings/IpCall;->isRecreatedView:Z

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_0
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "KeyEvent.KEYCODE_BACK:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "KeyEvent.KEYCODE_DPAD_CENTER:"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    return v5

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateItem()V

    return v3

    :pswitch_1
    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iput-boolean v3, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/IpCall;Lcom/android/phone/callsettings/IpCall$ActionModeCallback;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->semStartMultiChoiceMode()V

    :cond_3
    iput-boolean v3, p0, Lcom/android/phone/callsettings/IpCall;->mEditModeFromMenu:Z

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->showIpNumberList(Landroid/database/Cursor;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    iput v6, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    iput-boolean v5, p0, Lcom/android/phone/callsettings/IpCall;->mClickDeleteMenu:Z

    :cond_6
    return v3

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyLeftRun(Landroid/view/View;)V

    return v3

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/IpCall;->softkeyRightRun(Landroid/view/View;)V

    return v3

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
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IPCallList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/android/phone/callsettings/IpCall;->mMenuForBixby:Landroid/view/Menu;

    sget-object v2, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "onPrepareOptionsMenu "

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    move v2, v3

    :goto_0
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-lez v0, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-lez v0, :cond_6

    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_7

    move v2, v3

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_8

    move v2, v3

    :goto_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_9

    move v2, v3

    :goto_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v2, v6, :cond_a

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_6
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/IpCall;->getIpNumberList(Z)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-eq v2, v6, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/IpCall;->optionMenuConfigurationChanged(Landroid/view/Menu;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateTitleBar()V

    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    move v2, v4

    goto :goto_5

    :cond_a
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->setListItemClick()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->isContentChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    iput-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "content changed when we are background. reload number list."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mAnyPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetInvalidated()V

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/IpCall;->updateIpNumberList(Z)V

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IpCall;->resetContentChanged()V

    sget-object v1, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateCount()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/phone/ia/IpCallStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/IpCallStateListener;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "IPCallList"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "IPCallList"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "IPCallList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_7
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->ipCallList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    iput v0, p0, Lcom/android/phone/callsettings/IpCall;->mState:I

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/IpCall;->updateDeleteItems()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->configChangedReloadActionBar(Landroid/view/ActionMode;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_sim_id"

    sget v1, Lcom/android/phone/callsettings/IpCall;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/IpCall;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/IpCall;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setActionMode(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/callsettings/IpCall;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionModeType:I

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/IpCall;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    iput v3, p0, Lcom/android/phone/callsettings/IpCall;->mActionModeType:I

    goto :goto_0
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$8;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$8;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/IpCall$9;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/IpCall$9;-><init>(Lcom/android/phone/callsettings/IpCall;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mIpCallListAdapter:Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall$IpCallListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mModeCallback:Lcom/android/phone/callsettings/IpCall$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpCall$ActionModeCallback;->updateSelectionMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/IpCall;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method
