.class Lcom/android/phone/Enhanced4GLTE$1;
.super Landroid/telephony/PhoneStateListener;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Enhanced4GLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/Enhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "Enhanced4GLTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCallStateChanged, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    const-string/jumbo v4, "enterprise_policy_new"

    invoke-virtual {v3, v4}, Lcom/android/phone/Enhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v3}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Enhanced4GLTE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EDM isCellularDataAllowed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", checkEnableUseOfPacketData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v3}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    :cond_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v2}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v2}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v3}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE$1;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-static {v3}, Lcom/android/phone/Enhanced4GLTE;->-get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
