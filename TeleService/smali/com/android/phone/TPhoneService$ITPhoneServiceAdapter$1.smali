.class Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;
.super Ljava/lang/Object;
.source "TPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;->sendSms(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->this$1:Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter;

    iput-object p2, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$number:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$msg:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[tphone] TPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSms() : number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "smsto"

    iget-object v4, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$number:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.extra.TEXT"

    iget-object v4, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/TPhoneService$ITPhoneServiceAdapter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
