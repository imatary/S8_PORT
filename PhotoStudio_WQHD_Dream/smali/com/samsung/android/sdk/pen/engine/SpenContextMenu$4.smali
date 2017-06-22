.class Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$4;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getCloseButtonLayout()Landroid/widget/LinearLayout;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$4;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->hide()V

    return-void
.end method
