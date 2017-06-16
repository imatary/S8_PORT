.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3$1;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3$1;->this$1:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->hide()V

    return-void
.end method
