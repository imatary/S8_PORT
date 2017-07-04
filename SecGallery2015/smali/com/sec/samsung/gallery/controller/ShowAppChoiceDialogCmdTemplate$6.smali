.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$6;
.super Ljava/lang/Object;
.source "ShowAppChoiceDialogCmdTemplate.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/common/AppChoiceDialog$OnResumeListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResumeCallback()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$000(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;I)V

    return-void
.end method
