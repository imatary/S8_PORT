.class Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

.field final synthetic val$item:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;


# direct methods
.method constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iput-object p2, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->val$item:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iget-object v1, v1, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->val$item:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->-wrap2(Lcom/android/phone/RecordCallsAutomaticallyList;I)V

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iget-object v1, v1, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->-wrap1(Lcom/android/phone/RecordCallsAutomaticallyList;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iget-object v1, v1, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    const v2, 0x7f0d01fb

    invoke-virtual {v1, v2}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iget-object v2, v2, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    const v3, 0x7f0d021c

    invoke-virtual {v2, v3}, Lcom/android/phone/RecordCallsAutomaticallyList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter$1;->this$1:Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;

    iget-object v1, v1, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsListAdapter;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-static {v1}, Lcom/android/phone/RecordCallsAutomaticallyList;->-wrap3(Lcom/android/phone/RecordCallsAutomaticallyList;)V

    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->sendSuccessResponseIfIAExecuting()V

    :cond_1
    return-void
.end method
