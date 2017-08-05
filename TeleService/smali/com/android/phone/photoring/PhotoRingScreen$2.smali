.class Lcom/android/phone/photoring/PhotoRingScreen$2;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$2;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    goto :goto_0
.end method
