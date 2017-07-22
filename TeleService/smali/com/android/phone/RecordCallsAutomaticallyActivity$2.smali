.class Lcom/android/phone/RecordCallsAutomaticallyActivity$2;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RecordCallsAutomaticallyActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->-get0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "RecordCallsAutomaticallyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick mSubAppBarView value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->-get0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyActivity$2;->this$0:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->-wrap0(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
