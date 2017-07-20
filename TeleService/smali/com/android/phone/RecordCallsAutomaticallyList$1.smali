.class Lcom/android/phone/RecordCallsAutomaticallyList$1;
.super Landroid/os/Handler;
.source "RecordCallsAutomaticallyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get5(Lcom/android/phone/RecordCallsAutomaticallyList;)Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$1;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->-wrap4(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    :cond_0
    return-void
.end method
