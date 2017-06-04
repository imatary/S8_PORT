.class Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$1;
.super Landroid/os/Handler;
.source "ShowAppChoiceDialogCmdTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate$1;->this$0:Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->handleMessageOnUiThread(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;->access$000(Lcom/sec/samsung/gallery/controller/ShowAppChoiceDialogCmdTemplate;I)V

    return-void
.end method
