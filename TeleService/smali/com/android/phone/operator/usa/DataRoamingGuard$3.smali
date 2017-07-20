.class Lcom/android/phone/operator/usa/DataRoamingGuard$3;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "http://www.sprint.com/internationalroaming"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v2, v0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-virtual {v2}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v2, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap3(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    const-string/jumbo v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v2, v3}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap2(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;->this$0:Lcom/android/phone/operator/usa/DataRoamingGuard;

    invoke-static {v2}, Lcom/android/phone/operator/usa/DataRoamingGuard;->-wrap0(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    goto :goto_0
.end method
