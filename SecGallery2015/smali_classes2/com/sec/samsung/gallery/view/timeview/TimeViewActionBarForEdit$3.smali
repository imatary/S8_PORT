.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;
.super Ljava/lang/Object;
.source "TimeViewActionBarForEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->updateButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

.field final synthetic val$toggleImage:Z

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->val$visible:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->val$toggleImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->val$visible:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setEnableSelectionOnActionBar(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->val$toggleImage:Z

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;Z)V

    goto :goto_0
.end method
