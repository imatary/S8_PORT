.class Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;
.super Ljava/lang/Object;
.source "SpenControlBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuMgr"
.end annotation


# instance fields
.field private mDirtyFlag:Z

.field public mFirstDraw:Z

.field public mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

.field public mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mItemList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mFirstDraw:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mVisible:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mDirtyFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->close()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    :cond_0
    return-void
.end method

.method public getPopupMenu()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getPopupMenu()Landroid/widget/PopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->hide()V

    :cond_0
    return-void
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mDirtyFlag:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mVisible:Z

    return v0
.end method

.method public setDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mDirtyFlag:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mVisible:Z

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    # invokes: Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->updateContextMenu()V
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->access$800(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mDirtyFlag:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mVisible:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ContextMenuMgr;->mInstance:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->show()V

    :cond_0
    return-void
.end method
