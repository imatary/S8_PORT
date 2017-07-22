.class Lcom/android/phone/UsimDownload$11;
.super Ljava/lang/Object;
.source "UsimDownload.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UsimDownload;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "Press OK Button "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-wrap2(Lcom/android/phone/UsimDownload;)V

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v1, v2}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get9(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTRegisterMain:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get10(Lcom/android/phone/UsimDownload;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "LGTReady"

    const-string/jumbo v2, "ril.domesticOtaReady"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get5(Lcom/android/phone/UsimDownload;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get5(Lcom/android/phone/UsimDownload;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "Not in service state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v1}, Lcom/android/phone/UsimDownload;->toastNotInService()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-get10(Lcom/android/phone/UsimDownload;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "getCatService returned null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v1, v2}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :goto_2
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1, v4}, Lcom/android/phone/UsimDownload;->-wrap3(Lcom/android/phone/UsimDownload;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "UsimDownload"

    const-string/jumbo v2, "Sent envelope to trigger BIP for OTA..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBipforOTA(Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    invoke-static {v1}, Lcom/android/phone/UsimDownload;->-wrap0(Lcom/android/phone/UsimDownload;)Z

    iget-object v1, p0, Lcom/android/phone/UsimDownload$11;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v2, Lcom/android/phone/UsimDownload$ScreenMode;->LGTNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    invoke-static {v1, v2}, Lcom/android/phone/UsimDownload;->-wrap7(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    goto :goto_2
.end method
