.class Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;
.super Ljava/lang/Object;
.source "AppChoiceDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$1200(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$ItemInfoAdapter;->getItemPackageName(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->access$800(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v4, 0x1

    return v4

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment$2;->this$1:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$AppChoiceDialogFragment;->this$0:Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->access$500(Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AppChoiceDialog"

    const-string/jumbo v5, "Activity not found"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
