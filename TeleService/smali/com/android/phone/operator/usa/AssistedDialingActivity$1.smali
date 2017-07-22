.class Lcom/android/phone/operator/usa/AssistedDialingActivity$1;
.super Ljava/lang/Object;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->-get1(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick mSubAppBarView value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->-get1(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/AssistedDialingActivity$1;->this$0:Lcom/android/phone/operator/usa/AssistedDialingActivity;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AssistedDialingActivity;->-get0(Lcom/android/phone/operator/usa/AssistedDialingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assisted_dialing"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
