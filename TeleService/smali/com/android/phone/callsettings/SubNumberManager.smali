.class public Lcom/android/phone/callsettings/SubNumberManager;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SubNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/SubNumberManager$1;,
        Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;,
        Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

.field private static SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

.field private static SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

.field private static SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

.field private static SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

.field private static SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

.field private static SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

.field private static SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

.field private static SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

.field private static mSimId:I


# instance fields
.field private createLayout:Landroid/widget/LinearLayout;

.field emptyText:Landroid/widget/FrameLayout;

.field private handler:Landroid/os/Handler;

.field listView:Landroid/widget/ListView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeType:I

.field private mActionbarTitle:Landroid/widget/TextView;

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

.field private mEditModeFromMenu:Z

.field private mEnableCheckedView:Z

.field private mIsSelectAllmode:Z

.field private mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

.field private mModeCallback:Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

.field private mSelectAllCheck:Landroid/widget/CheckBox;

.field private mSelectedItem:I

.field private mState:I

.field private mSubNumberHelp:Landroid/preference/PreferenceCategory;

.field private mSubNumberprefSet:Landroid/preference/PreferenceScreen;

.field private mTempPhoneEditString:Ljava/lang/String;

.field private mTempPrefixEditString:Ljava/lang/String;

.field private mUpdated:Z

.field private subCount:I

.field private subNumberPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subNumberPrefixList:Ljava/util/ArrayList;
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
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->createLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/phone/callsettings/SubNumberManager;)Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/phone/callsettings/SubNumberManager;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/phone/callsettings/SubNumberManager;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPhoneEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPrefixEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/SubNumberManager;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionModeType:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/SubNumberManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/SubNumberManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/SubNumberManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEditModeFromMenu:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/SubNumberManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEnableCheckedView:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/SubNumberManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/SubNumberManager;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/callsettings/SubNumberManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPrefixEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/phone/callsettings/SubNumberManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedItemPositions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/phone/callsettings/SubNumberManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEditModeFromMenu:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/callsettings/SubNumberManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEnableCheckedView:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/phone/callsettings/SubNumberManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/phone/callsettings/SubNumberManager;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectAllCheck:Landroid/widget/CheckBox;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/phone/callsettings/SubNumberManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/phone/callsettings/SubNumberManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPhoneEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/SubNumberManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SubNumberManager;->deleteSubNumber(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SubNumberManager;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/SubNumberManager;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateDeleteItems()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/SubNumberManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateSubNumberList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SubNumberManager"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_PREFIX_ONE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

    const-string/jumbo v0, "SUB_PHONE_NUMBER_ONE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_PREFIX_TWO"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

    const-string/jumbo v0, "SUB_PHONE_NUMBER_TWO"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_PREFIX_THREE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

    const-string/jumbo v0, "SUB_PHONE_NUMBER_THREE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_TYPE_ONE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_TYPE_TWO"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

    const-string/jumbo v0, "SUB_NUMBER_TYPE_THREE"

    sput-object v0, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    iput v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCurrentSelectItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEnableCheckedView:Z

    iput v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionModeType:I

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEditModeFromMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mClickDeleteMenu:Z

    iput-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mIsSelectAllmode:Z

    iput-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mModeCallback:Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

    iput-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    new-instance v0, Lcom/android/phone/callsettings/SubNumberManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/SubNumberManager$1;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private checkPhoneAlreadyInUse(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPhoneAlreadyInUse  mUpdated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPhoneEditString:Ljava/lang/String;

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPhoneEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method

.method private checkPrefixAlreadyInUse(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPrefixAlreadyInUse  mUpdated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPrefixEditString:Ljava/lang/String;

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPrefixEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v4
.end method

.method private deleteSubNumber(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, p1, v4}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPrefix(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPhone(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v0, p1

    :goto_1
    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->getSubPrefix(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->getSubPhone(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPrefix(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPhone(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPrefix(ILjava/lang/String;)V

    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPhone(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "initLayout"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    const v0, 0x7f10029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->showPrefixNumberList()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v0, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;-><init>(Lcom/android/phone/callsettings/SubNumberManager;Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mModeCallback:Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mModeCallback:Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    new-instance v0, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    const v3, 0x7f0400f1

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;-><init>(Lcom/android/phone/callsettings/SubNumberManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/callsettings/SubNumberManager$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SubNumberManager$2;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private savePrefixNumber(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    move-object v3, p1

    move-object v2, p2

    move v4, p3

    const-wide/16 v0, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    sget-object v5, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "savePrefixNumber  resultPrefix="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; resultPhone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";resultType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SubNumberManager;->checkPrefixAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d05c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

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

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SubNumberManager;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/SubNumberManager;->checkPhoneAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d05c4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/SubNumberManager;->displayToast(Ljava/lang/String;)V

    return-void

    :cond_2
    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v5, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {p0, v5, p1}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPrefix(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v5, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {p0, v5, p2}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPhone(ILjava/lang/String;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {p0, v5, p3}, Lcom/android/phone/callsettings/SubNumberManager;->setSubType(II)V

    :goto_1
    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetInvalidated()V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->emptyText:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateCount()V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    if-le v6, v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p1}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPrefix(ILjava/lang/String;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p2}, Lcom/android/phone/callsettings/SubNumberManager;->setSubPhone(ILjava/lang/String;)V

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, p3}, Lcom/android/phone/callsettings/SubNumberManager;->setSubType(II)V

    const-string/jumbo v5, "SubNumberManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Added  Prefix= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Phone = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " tempType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "SubNumberManager"

    const-string/jumbo v6, "max in saveIpNumber - no add"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showPrefixNumberList()V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SubNumberManager;->getSubPrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SubNumberManager;->getSubPhone(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showPrefixNumberList message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; message2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPhoneList:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateCount()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private updateDeleteItems()V
    .locals 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedCount:I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectAllCheck:Landroid/widget/CheckBox;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    :goto_1
    invoke-interface {v2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private updateItem(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    iput-boolean v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->goToEditSubNumberScreen()V

    return-void
.end method

.method private updateSubNumberList()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current mState = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateCount()V

    return-void
.end method

.method private updateTitleBar()V
    .locals 2

    const v1, 0x7f0d0caa

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSubPhone(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSubPrefix(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSubType(I)I
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public goToEditSubNumberScreen()V
    .locals 6

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "goToEditSubNumberScreen"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EDITED_PREFIX"

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPrefixEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "EDITED_PHONE"

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mTempPhoneEditString:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "SELECTED_TYPE"

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->getSubType(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "UPDATE_MODE"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "callsettings_reject_messages"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const-class v0, Lcom/android/phone/callsettings/EditSubNumberScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/SubNumberManager;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    const-string/jumbo v3, "EDIT_SUB_NUMBER_RESULT Intent"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSelectedItem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";mUpdated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "EDITED_PREFIX"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "EDITED_PHONE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SELECTED_TYPE"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "UPDATE_MODE"

    invoke-virtual {p3, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mUpdated:Z

    sget-object v3, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "minputPrefix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";minputPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";mselectType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/phone/callsettings/SubNumberManager;->savePrefixNumber(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    const v6, 0x7f0400f1

    invoke-direct {v3, p0, v4, v6, v5}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;-><init>(Lcom/android/phone/callsettings/SubNumberManager;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    iget-object v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "Configuration"

    const-string/jumbo v1, "changed "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->invalidateOptionsMenu()V

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v3, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onBuildHeaders"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getArguments()Landroid/os/Bundle;

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

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_4

    const-string/jumbo v3, "DUAL SIM"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    const-string/jumbo v3, "Bundle is not null"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSimId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/SubNumberManager;->setHasOptionsMenu(Z)V

    iput v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    return-void

    :cond_3
    const-string/jumbo v3, "Bundle is null"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    sput v6, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v3

    sput v3, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    if-lez v1, :cond_0

    sget v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    sput v1, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateView() mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;)V

    sget v1, Lcom/android/phone/callsettings/SubNumberManager;->mSimId:I

    if-ne v1, v3, :cond_4

    const-string/jumbo v1, "SubNumberSim2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_ONE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_TWO_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_THREE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_ONE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_TWO_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_THREE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_ONE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_TWO_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_THREE_SIM2"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

    :cond_1
    :goto_0
    const v1, 0x7f0400f2

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "sub_number_help_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0d0cab

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/SubNumberManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    if-eqz p3, :cond_3

    const-string/jumbo v1, "selectedItem"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/SubNumberManager;->initLayout(Landroid/view/View;)V

    return-object v0

    :cond_4
    const-string/jumbo v1, "SubNumber"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_ONE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_TWO"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_PREFIX_THREE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_ONE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_TWO"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_PHONE_NUMBER_THREE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_ONE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_TWO"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

    const-string/jumbo v1, "SUB_NUMBER_TYPE_THREE"

    sput-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroyView "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "sub_number_help_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/SubNumberManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :sswitch_0
    iget v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->unSelectAllList()V

    iget-object v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateSubNumberList()V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

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

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "childView view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_1
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
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    return v4

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    return v6

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_2
    if-ge v0, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->updateItem(Ljava/lang/String;)V

    :goto_0
    return v4

    :cond_3
    const v1, 0x7f0d0cac

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/SubNumberManager;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iput-boolean v4, p0, Lcom/android/phone/callsettings/SubNumberManager;->mEditModeFromMenu:Z

    iput v5, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/SubNumberManager;->setActionMode(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetInvalidated()V

    :cond_4
    return v4

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->softkeyLeftRun(Landroid/view/View;)V

    return v4

    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->softkeyRightRun(Landroid/view/View;)V

    return v4

    nop

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

    sget-object v0, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPrepareOptionsMenu "

    invoke-static {v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/android/phone/callsettings/SubNumberManager$5;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/SubNumberManager$5;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v1, 0x7f0d050b

    invoke-interface {p1, v3, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0d0510

    invoke-interface {p1, v3, v6, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    if-eq v1, v5, :cond_3

    if-ge v0, v5, :cond_3

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    if-eq v4, v5, :cond_1

    if-lez v0, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->createLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->createLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateTitleBar()V

    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberprefSet:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSubNumberHelp:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current mState in onResume = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateCount()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->subNumberPrefixList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iput v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mState:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/SubNumberManager;->updateDeleteItems()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "selectedItem"

    iget v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

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

    invoke-direct {p0, v0, v3}, Lcom/android/phone/callsettings/SubNumberManager;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionModeType:I

    if-eqz v0, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionModeType:I

    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionModeType:I

    goto :goto_0
.end method

.method public setSubPhone(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_ONE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_TWO:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_PHONE_NUMBER_THREE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSubPrefix(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_ONE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_TWO:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_PREFIX_THREE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSubType(II)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_ONE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_TWO:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/SubNumberManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/SubNumberManager;->SUB_NUMBER_TYPE_THREE:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SubNumberManager$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SubNumberManager$3;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/callsettings/SubNumberManager$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/SubNumberManager$4;-><init>(Lcom/android/phone/callsettings/SubNumberManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedItemPositions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mCheckedItemPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mListAdapter:Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager$SubNumberAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mModeCallback:Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/SubNumberManager$ActionModeCallback;->updateSelectionMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SubNumberManager;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method
