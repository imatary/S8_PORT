.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$4;
.super Ljava/lang/Object;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$PrivateModeChangeListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateModeChanged()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$4;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$300(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
