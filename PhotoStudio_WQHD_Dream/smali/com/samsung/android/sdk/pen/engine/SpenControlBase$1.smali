.class Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;
.super Ljava/lang/Object;
.source "SpenControlBase.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$1;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onMenuSelected(I)V

    return-void
.end method
