.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v2, "mobile_newtork_style_for_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap13(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$12;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->finish()V

    goto :goto_0
.end method
