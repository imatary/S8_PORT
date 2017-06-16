.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->access$300(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;->onSelected(I)V

    :cond_0
    return-void
.end method
