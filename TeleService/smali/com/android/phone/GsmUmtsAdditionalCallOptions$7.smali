.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPreferenceChange - mAutoAreaCodeButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap7(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "area_code_sim2_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap14(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap9(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    return v5

    :cond_2
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "area_code_value"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "dcm_dialer_prefix_setting_support"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V

    goto :goto_0
.end method
