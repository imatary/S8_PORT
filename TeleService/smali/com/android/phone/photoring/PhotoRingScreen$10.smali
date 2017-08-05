.class Lcom/android/phone/photoring/PhotoRingScreen$10;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->checkMobileData()Z
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

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get8(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "key_photoring_mobile_data_show"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get10(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-set7(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$10;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    goto :goto_1
.end method
