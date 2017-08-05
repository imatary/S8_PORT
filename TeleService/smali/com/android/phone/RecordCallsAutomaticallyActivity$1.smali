.class Lcom/android/phone/RecordCallsAutomaticallyActivity$1;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const v3, 0x7f0d0257

    const-string/jumbo v0, "RecordCallsAutomaticallyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record_calls_automatically_type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v0, v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    const v2, 0x7f0d02b1

    invoke-virtual {v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    int-to-long v4, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "record_calls_automatically_type"

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyActivity;->items_value:[I

    aget v2, v2, p3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-static {v0}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->-wrap0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    return-void

    :cond_1
    if-ne p3, v4, :cond_2

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v0, v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    const v2, 0x7f0d02b3

    invoke-virtual {v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    int-to-long v4, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v0, v3}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    const v2, 0x7f0d02b2

    invoke-virtual {v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "record_calls_automatically_type"

    int-to-long v4, p3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method
