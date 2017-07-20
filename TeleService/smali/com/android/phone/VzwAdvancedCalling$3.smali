.class Lcom/android/phone/VzwAdvancedCalling$3;
.super Ljava/lang/Object;
.source "VzwAdvancedCalling.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCalling;->updateVowifiCallSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCalling;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCalling;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCalling$3;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling$3;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-static {v2}, Lcom/android/phone/VzwAdvancedCalling;->-get1(Lcom/android/phone/VzwAdvancedCalling;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, "Inside Vowifi onPreferenceClick"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling$3;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-static {v2}, Lcom/android/phone/VzwAdvancedCalling;->-wrap0(Lcom/android/phone/VzwAdvancedCalling;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.sec.vowifispg"

    const-string/jumbo v3, "com.sec.vowifispg.AddressVerification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "launch_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling$3;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    const/16 v3, 0xa

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/VzwAdvancedCalling;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.phone.action.VZW_VOWIFI_CALL_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling$3;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-virtual {v2, v1}, Lcom/android/phone/VzwAdvancedCalling;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, "In catch block"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
