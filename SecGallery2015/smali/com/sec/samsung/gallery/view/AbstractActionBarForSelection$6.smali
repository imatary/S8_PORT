.class Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;
.super Ljava/lang/Object;
.source "AbstractActionBarForSelection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->updateButton(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

.field final synthetic val$toggleImage:Z

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iput p2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->val$visible:I

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->val$toggleImage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->val$visible:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setCheckboxState(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setEnableSelectionOnActionBar(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setEnableSelectionOnActionBar(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->this$0:Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;->val$toggleImage:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setCheckboxState(Z)V

    goto :goto_0
.end method
