.class Lcom/android/phone/VzwAdvancedCalling$1;
.super Ljava/lang/Object;
.source "VzwAdvancedCalling.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCalling;->showActivateAdvCall(Z)V
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

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCalling$1;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    const-string/jumbo v3, "VzwAdvancedCalling"

    const-string/jumbo v4, "showActivateAdvCall: launching MVM activity"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vzw.hss.intent.action.PROVISION_VOLTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling$1;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-virtual {v3, v2}, Lcom/android/phone/VzwAdvancedCalling;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v1

    const-string/jumbo v3, "VzwAdvancedCalling"

    const-string/jumbo v4, "showActivateAdvCall: MVM activity not found"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling$1;->this$0:Lcom/android/phone/VzwAdvancedCalling;

    invoke-static {v3}, Lcom/android/phone/VzwAdvancedCalling;->-get0(Lcom/android/phone/VzwAdvancedCalling;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0d64

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0d67

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/VzwAdvancedCalling$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/VzwAdvancedCalling$1$1;-><init>(Lcom/android/phone/VzwAdvancedCalling$1;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
