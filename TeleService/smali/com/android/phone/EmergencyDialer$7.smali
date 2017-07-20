.class Lcom/android/phone/EmergencyDialer$7;
.super Ljava/lang/Object;
.source "EmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyDialer;->initEmergencyContactsItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get3(Lcom/android/phone/EmergencyDialer;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get3(Lcom/android/phone/EmergencyDialer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->semFinishMultiChoiceMode()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_6
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-wrap0(Lcom/android/phone/EmergencyDialer;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_8
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void

    :cond_a
    const-string/jumbo v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_f

    :cond_d
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    :cond_e
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "tablet_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setEmergencyContactExists(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->removeContacts(Z)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    :cond_10
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setScreenType(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    iget-object v0, v0, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->performCancel()V

    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/android/phone/EmergencyDialer$7;->this$0:Lcom/android/phone/EmergencyDialer;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialer;->-get4(Lcom/android/phone/EmergencyDialer;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->setVisibility(I)V

    goto :goto_4

    :cond_12
    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "initEmergencyContactsItem(): non-visible emergency contact icon"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v0, "EmergencyDialer"

    const-string/jumbo v1, "initEmergencyContactsItem(): non-visible emergency contact icon"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
