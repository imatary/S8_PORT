.class public Lcom/android/phone/MMIDialogActivity;
.super Landroid/app/Activity;
.source "MMIDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultSubscriptionChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mMMIDialog:Landroid/app/Dialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevSubId:I


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->onMMICancel()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/MMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/MMIDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MMIDialogActivity;->mDefaultSubscriptionChanged:Z

    return-void
.end method

.method private changeDefaultSubscriptionId()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "phoneId"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v3

    iput v3, p0, Lcom/android/phone/MMIDialogActivity;->mPrevSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    sget-object v3, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeDefaultVoiceSubId - phoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / mPrevSubId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/MMIDialogActivity;->mPrevSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, v2, v6

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/MMIDialogActivity;->mDefaultSubscriptionChanged:Z

    :cond_0
    return-void
.end method

.method private dismissDialogsAndFinish()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->restoreDefaultSim()V

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    return-void
.end method

.method private onMMICancel()V
    .locals 2

    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMMICancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMMICancel: finishing InCallScreen..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    return-void
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMMIComplete, phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p0, p1, v4, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->restoreDefaultSim()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Got MMI_COMPLETE, finishing dialog activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method

.method private restoreDefaultSim()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/phone/MMIDialogActivity;->mDefaultSubscriptionChanged:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/MMIDialogActivity;->mDefaultSubscriptionChanged:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreDefaultSim - isIDLE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setDelayRestoreDefaultSim(Z)V

    iget v1, p0, Lcom/android/phone/MMIDialogActivity;->mPrevSubId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setPrevDefaultSubidForRestoreSim(I)V

    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "restoreDefaultSim, return - Because current phone state is not IDLE, delay to restore after current call disconnected "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreDefaultSim - mPrevSubId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/MMIDialogActivity;->mPrevSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/MMIDialogActivity;->mPrevSubId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultSubscriptionId(I)Z

    :cond_2
    return-void
.end method

.method private showMMIDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->changeDefaultSubscriptionId()V

    new-instance v0, Lcom/android/phone/MMIDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MMIDialogActivity$1;-><init>(Lcom/android/phone/MMIDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0469

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->showMMIDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    return-void
.end method
