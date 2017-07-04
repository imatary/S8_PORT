.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;
.super Ljava/lang/Object;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->showAppChoiceDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$100(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$3;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->createAppList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/AppChoiceDialog;->setAppList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
