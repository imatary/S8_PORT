.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "area_code_sim2_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "area_code_value"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
