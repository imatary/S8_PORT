.class Lcom/android/phone/GsmUmtsOptions$1;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsOptions;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferenceTreeClick - set Sim slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-static {v4}, Lcom/android/phone/GsmUmtsOptions;->-get1(Lcom/android/phone/GsmUmtsOptions;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "simSlot"

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-static {v3}, Lcom/android/phone/GsmUmtsOptions;->-get1(Lcom/android/phone/GsmUmtsOptions;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    invoke-static {v2}, Lcom/android/phone/GsmUmtsOptions;->-get0(Lcom/android/phone/GsmUmtsOptions;)Landroid/preference/PreferenceActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsOptions$1;->this$0:Lcom/android/phone/GsmUmtsOptions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
