.class Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;
.super Ljava/lang/Object;
.source "ShowDisclaimerDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->initButtons(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->access$000(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "is_need_to_show_disclaimer_popup"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->sendIntent(I)V
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowDisclaimerDialogCmd;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
