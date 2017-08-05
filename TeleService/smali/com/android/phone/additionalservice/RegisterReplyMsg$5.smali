.class Lcom/android/phone/additionalservice/RegisterReplyMsg$5;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/additionalservice/RegisterReplyMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->DIALOG_OPEN:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-set1(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;)Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    sget-object v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;->SERVICE_NAME:Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-wrap0(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$EditClass;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get5(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get2(Lcom/android/phone/additionalservice/RegisterReplyMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get1(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get2(Lcom/android/phone/additionalservice/RegisterReplyMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;

    iget v0, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->id:I

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1, v0}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-wrap1(Lcom/android/phone/additionalservice/RegisterReplyMsg;I)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get1(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get2(Lcom/android/phone/additionalservice/RegisterReplyMsg;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    const v3, 0x7f0d0627

    invoke-virtual {v2, v3}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-wrap2(Lcom/android/phone/additionalservice/RegisterReplyMsg;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get4(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg$RegisterReplymsgAdapter;->notifyDataSetInvalidated()V

    iget-object v2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get1(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->LIST_SHOWN:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    :goto_1
    invoke-static {v2, v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-set1(Lcom/android/phone/additionalservice/RegisterReplyMsg;Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;)Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    invoke-static {v1}, Lcom/android/phone/additionalservice/RegisterReplyMsg;->-get3(Lcom/android/phone/additionalservice/RegisterReplyMsg;)Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$5;->this$0:Lcom/android/phone/additionalservice/RegisterReplyMsg;

    iget-object v1, v1, Lcom/android/phone/additionalservice/RegisterReplyMsg;->emptyText:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;->LIST_EMPTY:Lcom/android/phone/additionalservice/RegisterReplyMsg$AppState;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
