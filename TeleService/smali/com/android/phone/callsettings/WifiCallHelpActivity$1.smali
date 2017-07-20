.class Lcom/android/phone/callsettings/WifiCallHelpActivity$1;
.super Ljava/lang/Object;
.source "WifiCallHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiCallHelpActivity;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiCallHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity$1;->this$0:Lcom/android/phone/callsettings/WifiCallHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, ".callsettings.WifiCallActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity$1;->this$0:Lcom/android/phone/callsettings/WifiCallHelpActivity;

    invoke-virtual {v4, v2}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiCallHelpActivity$1;->this$0:Lcom/android/phone/callsettings/WifiCallHelpActivity;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/WifiCallHelpActivity;->finish()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "WifiCallHelpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ActivityNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method
