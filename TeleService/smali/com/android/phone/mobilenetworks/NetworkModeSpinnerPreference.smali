.class public Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;
.super Landroid/preference/Preference;
.source "NetworkModeSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;,
        Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsSpinnerShowing:Z

.field private mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

.field private mSelectedPosition:I

.field private mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSelectedPosition:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSelectedItem(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "NetworkModeSpinnerPreference"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSelectedPosition:I

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    const-string/jumbo v1, "DEFAULT"

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    new-instance v1, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$1;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$2;-><init>(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private setSelectedItem(I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setSelectedItem: return, mNetworkModeMediator is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    if-eqz v4, :cond_2

    if-lez p1, :cond_2

    iget-object v6, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSelectedItem : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    invoke-virtual {v4, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v4, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setSelection(I)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getSelectedItemPosition()I

    move-result v4

    iput v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSelectedPosition:I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    invoke-virtual {v4, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->notifyDependencyChange(Z)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getCurrentNetworkType()I

    move-result v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSelectedItem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v4, v1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setSelectedItem(I)V

    :goto_1
    return-void

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setSelectedItem : ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addItem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkAndSetEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkAndSetEnabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->checkAndSetEnabled()V

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "cleanUp..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->cleanUp()V

    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mAdapter:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;

    const-string/jumbo v1, "DEFAULT"

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$SpinnerArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearSelection()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "clearSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSelectedPosition:I

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsSpinnerShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    return v0
.end method

.method public getPreferredNetworkType()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPreferredNetworkType..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->getPreferredNetworkType()V

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBindView: add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v2, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public prepare()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "prepare..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->prepare()V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setIsSpinnerShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    return-void
.end method

.method public setSelection(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSelection: not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v1, v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSpinner:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference$NetworkModeSpinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mSelectedPosition:I

    const/4 v1, 0x1

    return v1
.end method

.method public setUp(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setUp..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;-><init>(Landroid/content/Context;Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->setUp()V

    return-void
.end method

.method public teardown()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "teardown..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mIsSpinnerShowing:Z

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mNetworkModeMediator:Lcom/android/phone/mobilenetworks/NetworkModeMediator;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeMediator;->teardown()V

    :cond_0
    iput-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->mContext:Landroid/content/Context;

    return-void
.end method
