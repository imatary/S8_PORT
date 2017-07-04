.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;
.super Ljava/lang/Object;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->handleMessageOnUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->val$msg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->val$msg:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->createAppList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$200(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->dismissDialog()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->createAppList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setAppList(Ljava/util/List;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$2;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
