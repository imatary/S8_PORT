.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSim1Handler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get0(Lcom/android/phone/PhoneGlobals;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "nck_block_feature"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ril.perso_nwk_puk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "network perm blocked, do not show sim depersonal panel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "show sim depersonal panel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v3, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Skip the Network Lock Panel - It is already displayed by SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "show sim depersonal panel- EVENT_SIM_NETWORK_SUBSET_LOCKED:SIM1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v3, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Skip the Network Lock Panel - It is already displayed by SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "show sim service provider depersonal panel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v3, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Skip the Network Lock Panel - It is already displayed by SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;I)V

    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, " sim depersonal panel- EVENT_SIM_REMOVED:SIM1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v4, v0, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mIsSim2Locked:Z

    if-eqz v0, :cond_7

    :cond_6
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Skip dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, " dismiss EVENT_SIM_REMOVED:SIM1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "PhoneApp"

    const-string/jumbo v1, "Skip EVENT_SIM_REMOVED:SIM1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
