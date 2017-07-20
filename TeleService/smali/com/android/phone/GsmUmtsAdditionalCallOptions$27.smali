.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeDataServiceBackForMultisim()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap2(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultDataSubId(I)V

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v1, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-set0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-get5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v1, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-set3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z

    :cond_0
    return-void
.end method
