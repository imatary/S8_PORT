.class Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;
.super Ljava/lang/Object;
.source "MoreActionsDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->setupItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->access$000(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;->access$100(Lcom/sec/samsung/gallery/controller/MoreActionsDialog$BottomPanelAdapter;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "more_actions_package_name"

    const-string/jumbo v3, "com.sec.android.gallery3d"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->access$200(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "show_dialog_once"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "tag_write_if_success"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "more_actions_package_name"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->access$200(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->access$200(Lcom/sec/samsung/gallery/controller/MoreActionsDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoreActionsDialog$1;->this$0:Lcom/sec/samsung/gallery/controller/MoreActionsDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/controller/MoreActionsDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
