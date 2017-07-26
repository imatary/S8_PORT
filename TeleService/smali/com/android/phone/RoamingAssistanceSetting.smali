.class public Lcom/android/phone/RoamingAssistanceSetting;
.super Landroid/app/ListActivity;
.source "RoamingAssistanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;
    }
.end annotation


# instance fields
.field items:[I

.field logging_detail:[I

.field private mActionBar:Landroid/app/ActionBar;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mSelectList:Landroid/widget/ListView;

.field private mSelectListAdapter:Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const v0, 0x7f0d0668

    const v1, 0x7f0d066a

    const v2, 0x7f0d066b

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->items:[I

    const v0, 0x7f0d0311

    const v1, 0x7f0d0312

    const v2, 0x7f0d0313

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->logging_detail:[I

    return-void
.end method

.method private getSelectedMode()I
    .locals 2

    const-string/jumbo v0, "roaming_assistance_setting"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleIASetRoamingAssistanceMode(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "RoamingAssistanceSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIASetRoamingAssistanceMode() mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "RoamingAssistanceSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIASetRoamingAssistanceMode() position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/RoamingAssistanceSetting;->getSelectedMode()I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "RoamingAssistance"

    const-string/jumbo v2, "SetRoamingAssistance"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    const-string/jumbo v1, "roaming"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "each"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "RoamingAssistance"

    const-string/jumbo v2, "SetRoamingAssistance"

    const-string/jumbo v3, "Valid"

    const-string/jumbo v4, "no"

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectListAdapter:Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

    invoke-virtual {v2, v0, v5, v5}, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectListAdapter:Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    const-string/jumbo v1, "RoamingAssistance"

    const-string/jumbo v2, "SetRoamingAssistance"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0400c8

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAssistanceSetting;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAssistanceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f0d024e

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAssistanceSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d028d

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAssistanceSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

    iget-object v1, p0, Lcom/android/phone/RoamingAssistanceSetting;->items:[I

    invoke-direct {v0, p0, v1}, Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;-><init>(Lcom/android/phone/RoamingAssistanceSetting;[I)V

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectListAdapter:Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectListAdapter:Lcom/android/phone/RoamingAssistanceSetting$SelectListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAssistanceSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAssistanceSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    const-string/jumbo v0, "RoamingAssistanceSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onListItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "roaming_assistance_setting"

    invoke-static {v0, p3}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const v0, 0x7f0d0274

    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAssistanceSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d028e

    invoke-virtual {p0, v1}, Lcom/android/phone/RoamingAssistanceSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RoamingAssistanceSetting;->logging_detail:[I

    aget v2, v2, p3

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAssistanceSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RoamingAssistanceSetting;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "RoamingAssistance"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mSelectList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/phone/RoamingAssistanceSetting;->getSelectedMode()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;-><init>(Lcom/android/phone/RoamingAssistanceSetting;)V

    iput-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/RoamingAssistanceSetting;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RoamingAssistance"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RoamingAssistance"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingAssistanceSetting;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "RoamingAssistance"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
