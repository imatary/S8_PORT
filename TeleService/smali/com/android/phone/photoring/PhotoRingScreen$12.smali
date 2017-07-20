.class Lcom/android/phone/photoring/PhotoRingScreen$12;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoRingScreen;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get8(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get9(Lcom/android/phone/photoring/PhotoRingScreen;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "key_photoring_duty_show"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get9(Lcom/android/phone/photoring/PhotoRingScreen;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap0(Lcom/android/phone/photoring/PhotoRingScreen;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;Z)V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v5}, Lcom/android/phone/photoring/PhotoRingScreen;->-get18(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d096f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v7, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-set10(Lcom/android/phone/photoring/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get14(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_3
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "key_photoring_duty_media_show"

    if-eqz v0, :cond_2

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v4}, Lcom/android/phone/photoring/PhotoRingScreen;->-get19(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/phone/photoring/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-set7(Lcom/android/phone/photoring/PhotoRingScreen;Z)Z

    goto :goto_3

    :cond_5
    const-string/jumbo v2, "ims_support_photo_ring"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap7(Lcom/android/phone/photoring/PhotoRingScreen;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get15(Lcom/android/phone/photoring/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " setRealtimeServiceInfoCall message without image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap5(Lcom/android/phone/photoring/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v2}, Lcom/android/phone/photoring/PhotoRingScreen;->-get13(Lcom/android/phone/photoring/PhotoRingScreen;)Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/photoring/PhotoRingScreen$12;->this$0:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-get11(Lcom/android/phone/photoring/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->-wrap2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7}, Lcom/android/phone/photoring/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
