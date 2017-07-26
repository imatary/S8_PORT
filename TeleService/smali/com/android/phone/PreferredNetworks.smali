.class public Lcom/android/phone/PreferredNetworks;
.super Landroid/app/Activity;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredNetworks$1;,
        Lcom/android/phone/PreferredNetworks$2;,
        Lcom/android/phone/PreferredNetworks$3;,
        Lcom/android/phone/PreferredNetworks$ProgressThread;
    }
.end annotation


# static fields
.field public static sSimId:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field final app:Lcom/android/phone/PhoneGlobals;

.field private emptyText:Landroid/widget/FrameLayout;

.field private isDialogShown:Z

.field private list:Landroid/widget/ListView;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PreferredNetworkListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyViewBackground:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field private mIsAirplainModeObserverRegister:Z

.field protected mIsLandscape:Z

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/PreferredNetworks;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/PreferredNetworks;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/PreferredNetworks;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "PreferredNetworks"

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneGlobals;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    iput-boolean v1, p0, Lcom/android/phone/PreferredNetworks;->mIsAirplainModeObserverRegister:Z

    new-instance v0, Lcom/android/phone/PreferredNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$1;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/PreferredNetworks$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PreferredNetworks$2;-><init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/PreferredNetworks$3;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$3;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private displayList(Landroid/os/AsyncResult;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "AsyncResult is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/android/phone/PreferredNetworks;->setEmptyView(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AsyncResult = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, v5}, Lcom/android/phone/PreferredNetworks;->setEmptyView(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v6}, Lcom/android/phone/PreferredNetworks;->setEmptyView(Z)V

    return-void

    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    const v3, 0x7f0400ad

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/PreferredNetworks;->saveIndex(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->setPreferredNetworksListCount(I)V

    return-void
.end method

.method private getMobileNetworkSettingsTabID()I
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "sim_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "sim_id"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileNetworkSettingsTabID sim id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileNetworkSettingsTabID dataPreferSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private saveIndex(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setEmptyView(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0400ab

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v1, 0x7f10015b

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->emptyText:Landroid/widget/FrameLayout;

    const v1, 0x7f100051

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/PreferredNetworks;->mIsLandscape:Z

    const v1, 0x7f100213

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->mEmptyViewBackground:Landroid/widget/ImageView;

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/PreferredNetworks;->getMobileNetworkSettingsTabID()I

    move-result v1

    sput v1, Lcom/android/phone/PreferredNetworks;->sSimId:I

    sget v1, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreferredNetworks"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    :goto_1
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworks;->mIsAirplainModeObserverRegister:Z

    const-string/jumbo v1, "config_hide_status_bar"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d085b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/phone/PreferredNetworks$ProgressThread;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PreferredNetworks$ProgressThread;-><init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/phone/PreferredNetworks$ProgressThread;->start()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d085a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy ############."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->mIsAirplainModeObserverRegister:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworks;->mIsAirplainModeObserverRegister:Z

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->finish()V

    return v4

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type_action"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "index"

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "name"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "act_gsm"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "act_utran"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "new_item"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MENU_ADD : onOptionsItemSelected sim id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sim_id"

    sget v2, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->startActivity(Landroid/content/Intent;)V

    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PreferredNetworks;->getMobileNetworkSettingsTabID()I

    move-result v0

    sput v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    sget v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    if-le v0, v2, :cond_3

    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSIMPhoneType(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume Ctc SIM card is inserted, so preferrednetwork is not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/phone/PreferredNetworks;->sSimId:I

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    goto :goto_0
.end method
